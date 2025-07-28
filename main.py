import pandas as pd
import json
import os

from scripts.analyze_financial_data import load_financial_data, generate_insights

def main():
    excel_file = "data/company_id.xlsx"
    json_folder = "data/raw_json"
    output_folder = "data/insights"

    os.makedirs(output_folder, exist_ok=True)

    try:
        df = pd.read_excel(excel_file)
    except FileNotFoundError:
        print(f" Excel file not found: {excel_file}")
        return

    if 'company_id' not in df.columns:
        print(f"Column 'company_id' not found in Excel. Available columns: {list(df.columns)}")
        return

    for index, row in df.iterrows():
        try:
            company_id = row['company_id']
            company_data = load_financial_data(company_id)
            insights = generate_insights(company_data)

            output_path = os.path.join(output_folder, f"{company_id}_insights.json")
            with open(output_path, "w") as out_file:
                json.dump(insights, out_file, indent=4)

            print(f"Analysis complete for {company_id}")

        except Exception as e:
            print(f" Error analyzing row {index}: {e}")

if __name__ == "__main__":
    main()
