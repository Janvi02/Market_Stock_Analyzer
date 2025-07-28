
import os
from scripts.fetch_financial_data import get_company_ids, fetch_company_data, save_raw_data


EXCEL_FILE = "data/Nifty100Companies.xlsx"
ABS_PATH = os.path.abspath(EXCEL_FILE)

print(f" Looking for Excel file at: {ABS_PATH}")

if not os.path.exists(EXCEL_FILE):
    print(" ERROR: Excel file not found! Please check the path and filename.")
    exit(1)


company_ids = get_company_ids(EXCEL_FILE)
print(f" Loaded {len(company_ids)} company IDs.")

for idx, company_id in enumerate(company_ids[:100], start=1):  
    print(f"\n [{idx}/100] Fetching data for {company_id}...")
    data = fetch_company_data(company_id)
    
    if data:
        save_raw_data(company_id, data)
        print(f" Saved: {company_id}.json")
    else:
        print(f" Failed to fetch data for {company_id}")