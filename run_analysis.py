import pandas as pd
import json
import os

from scripts.analyze_financial_data import generate_insights  

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
    except Exception as e:
        print(f" Error reading Excel: {e}")
        return
    df.columns = df.columns.str.strip().str.lower()
    
    if 'company_id' not in df.columns:
        print(f" Column 'company_id' not found in Excel. Available columns: {list(df.columns)}")
        return

    for index, row in df.iterrows():
        try:
            company_id = row['company_id']
            if pd.isna(company_id):
                print(f" Skipping row {index} due to missing company_id")
                continue

            company_id = str(company_id).strip().upper()
            json_file_path = os.path.join(json_folder, f"{company_id}.json")

            if not os.path.exists(json_file_path):
                print(f" JSON file for {company_id} not found at {json_file_path}")
                continue

            with open(json_file_path, "r", encoding='utf-8') as f:
                company_data = json.load(f)

            insights = generate_insights(company_data)

            output_path = os.path.join(output_folder, f"{company_id}_insights.json")
            with open(output_path, "w", encoding='utf-8') as out_file:
                json.dump(insights, out_file, indent=4)

            print(f" Analysis complete for {company_id}")

        except Exception as e:
            print(f" Error analyzing row {index} ({company_id}): {e}")

if __name__ == "__main__":
    main()
