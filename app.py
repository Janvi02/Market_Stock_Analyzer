from flask import Flask, render_template, request
import mysql.connector
from mysql.connector import Error
from functools import wraps

app = Flask(__name__)

# Database config
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'Admin123#',
    'database': 'ml',
    'pool_name': 'stock_pool',
    'pool_size': 5
}

def handle_db_connection(f):
    @wraps(f)
    def wrapper(*args, **kwargs):
        connection = None
        cursor = None
        try:
            connection = mysql.connector.connect(**db_config)
            cursor = connection.cursor(dictionary=True)
            kwargs['connection'] = connection
            kwargs['cursor'] = cursor
            return f(*args, **kwargs)
        except Error as e:
            print(f"Database error: {e}")
            return render_template('error.html', message="Database connection error", details=str(e))
        finally:
            if cursor:
                cursor.close()
            if connection:
                connection.close()
    return wrapper

@app.route('/', methods=['GET', 'POST'])
@handle_db_connection
def index(connection, cursor):
    if request.method == 'POST':
        company = request.form.get('company')
        if not company:
            return render_template('index.html', error="Please enter a company name")

        cursor.execute("""
            SELECT id, company_name, company_logo, website, roce_percentage, roe_percentage
            FROM companies 
            WHERE company_name LIKE %s OR id LIKE %s
            LIMIT 1
        """, (f"%{company}%", f"%{company}%"))

        result = cursor.fetchone()

        if not result:
            return render_template('index.html', error=f"No company found matching '{company}'")

        return company_analysis_data(result['id'])

    return render_template('index.html')

@app.route('/companies')
@handle_db_connection
def all_companies(connection, cursor):
    page = request.args.get('page', 1, type=int)
    per_page = 20
    offset = (page - 1) * per_page

    cursor.execute("""
        SELECT id, company_name, company_logo, website 
        FROM companies 
        ORDER BY company_name
        LIMIT %s OFFSET %s
    """, (per_page, offset))

    companies = cursor.fetchall()

    cursor.execute("SELECT COUNT(*) as total FROM companies")
    total = cursor.fetchone()['total']

    return render_template('all_companies.html', companies=companies, page=page, per_page=per_page, total=total)

@app.route('/company/<symbol>')
def company_analysis(symbol):
    return company_analysis_data(symbol)

def company_analysis_data(symbol):
    try:
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor(dictionary=True)

        # Get company info
        cursor.execute("""
            SELECT *, 
            CONCAT(ROCE_percentage, '%') as roce_display,
            CONCAT(ROE_percentage, '%') as roe_display
            FROM companies 
            WHERE id = %s
        """, (symbol,))
        result = cursor.fetchone()

        if not result:
            return render_template('error.html', message="Company not found", details=f"No data found for symbol: {symbol}")

        # Get analysis data
        cursor.execute("""
            SELECT compounded_sales_growth, compounded_profit_growth, stock_price_cagr, roe
            FROM analysis
            WHERE company_id = %s
        """, (symbol,))
        analysis_data = cursor.fetchall()

        analysis_metrics = {
            'sales_growth': {'3y': '-', '5y': '-', '10y': '-', 'ttm': '-'},
            'profit_growth': {'3y': '-', '5y': '-', '10y': '-', 'ttm': '-'},
            'stock_cagr': {'3y': '-', '5y': '-', '10y': '-', '1y': '-'},
            'roe': {'3y': '-', '5y': '-', '10y': '-', 'last': '-'}
        }

        def extract_value(field, period):
            if field and period in field and ':' in field:
                return field.split(':')[1].strip().replace('%', '')
            return None

        for row in analysis_data:
            for period_label, key in [('3 Years', '3y'), ('5 Years', '5y'), ('10 Years', '10y'), ('TTM', 'ttm'), ('1 Year', '1y'), ('Last Year', 'last')]:
                if row['compounded_sales_growth']:
                    val = extract_value(row['compounded_sales_growth'], period_label)
                    if val:
                        analysis_metrics['sales_growth'][key] = val
                if row['compounded_profit_growth']:
                    val = extract_value(row['compounded_profit_growth'], period_label)
                    if val:
                        analysis_metrics['profit_growth'][key] = val
                if row['stock_price_cagr']:
                    val = extract_value(row['stock_price_cagr'], period_label)
                    if val:
                        analysis_metrics['stock_cagr'][key] = val
                if row['roe']:
                    val = extract_value(row['roe'], period_label)
                    if val:
                        analysis_metrics['roe'][key] = val

        # Get pros and cons
        cursor.execute("""
            SELECT pros, cons 
            FROM prosandcons 
            WHERE company_id = %s
        """, (symbol,))
        pros_cons = cursor.fetchall()
        pros = [item['pros'] for item in pros_cons if item['pros']] or ["No significant advantages found"]
        cons = [item['cons'] for item in pros_cons if item['cons']] or ["No significant disadvantages found"]

        result['analysis'] = analysis_metrics
        result['pros'] = pros
        result['cons'] = cons

        return render_template('result.html', data=result, company=symbol)

    except Error as e:
        print(f"Database error: {e}")
        return render_template('error.html', message="Error fetching company data", details=str(e))
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()

@app.errorhandler(404)
def page_not_found(e):
    return render_template('error.html', message="Page not found", details="The requested URL was not found on this server"), 404

@app.errorhandler(500)
def internal_server_error(e):
    return render_template('error.html', message="Internal server error", details="An unexpected error occurred"), 500

if __name__ == '__main__':
    app.run(debug=True)

