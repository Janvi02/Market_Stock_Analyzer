import json
import os
import mysql.connector


def load_financial_data(company_id, data_dir="data/raw_json"):
    filepath = os.path.join(data_dir, f"{company_id}.json")
    if not os.path.exists(filepath):
        raise FileNotFoundError(f"Data file not found for {company_id}")
    
    with open(filepath, "r", encoding="utf-8") as file:
        data = json.load(file)
    return data


def safe_float(value, default=0.0):
    try:
        if value is None or value == "" or (isinstance(value, str) and "%" in value):
            return default
        return float(value)
    except Exception:
        return default


def save_to_mysql(company_name, pros, cons):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Admin123#",
            database="ml"
        )
        cursor = connection.cursor()

        query = """
        INSERT INTO ml (company_name, pros, cons)
        VALUES (%s, %s, %s)
        """

        cursor.execute(query, (company_name, "\n".join(pros), "\n".join(cons)))
        connection.commit()
        print(f" Inserted insights into MySQL for: {company_name}")
    except Exception as e:
        print(f"MySQL insert failed for {company_name}: {e}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


def generate_insights(json_data):
    company_info = json_data.get("company", {})
    company_name = company_info.get("company_name", "Unknown Company")
    roe = safe_float(company_info.get("roe_percentage"))
    roce = safe_float(company_info.get("roce_percentage"))

    pl_data = json_data.get("data", {}).get("profitandloss", [])
    latest_year = pl_data[-1] if pl_data else {}

    sales_growth_5y = None
    profit_growth = None

    if len(pl_data) >= 6:
        try:
            sales_old = safe_float(pl_data[-6].get("sales"))
            sales_new = safe_float(pl_data[-1].get("sales"))
            if sales_old:
                sales_growth_5y = ((sales_new - sales_old) / sales_old) * 100
        except Exception:
            pass

        try:
            profit_old = safe_float(pl_data[-6].get("net_profit"))
            profit_new = safe_float(pl_data[-1].get("net_profit"))
            if profit_old:
                profit_growth = ((profit_new - profit_old) / profit_old) * 100
        except Exception:
            pass

    dividend_payout = safe_float(latest_year.get("dividend_payout"))

    pros = []
    cons = []

    if roe > 10:
        pros.append(f"Company has a good return on equity (ROE): {roe:.1f}%")
    else:
        cons.append(f"Low return on equity: {roe:.1f}%")

    if roce > 10:
        pros.append(f"Strong return on capital employed (ROCE): {roce:.1f}%")
    else:
        cons.append(f"Low return on capital employed (ROCE): {roce:.1f}%")

    if dividend_payout > 10:
        pros.append(f"Maintains healthy dividend payout of {dividend_payout:.1f}%")
    else:
        cons.append("Company is not paying out significant dividends")

    if profit_growth is not None:
        if profit_growth > 10:
            pros.append(f"Good profit growth over 5 years: {profit_growth:.1f}%")
        else:
            cons.append(f"Poor profit growth over 5 years: {profit_growth:.1f}%")

    if sales_growth_5y is not None:
        if sales_growth_5y > 10:
            pros.append(f"Sales growth over 5 years is strong: {sales_growth_5y:.1f}%")
        else:
            cons.append(f"Poor sales growth over 5 years: {sales_growth_5y:.1f}%")


    save_to_mysql(company_name, pros[:3], cons[:3])

    return {
        "company": company_name,
        "pros": pros[:3],
        "cons": cons[:3]
    }
