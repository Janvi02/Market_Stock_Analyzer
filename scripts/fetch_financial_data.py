import pandas as pd
import requests
import os
import json
from utils.api_config import BASE_URL, API_KEY

def get_company_ids(filepath):
    df = pd.read_excel(filepath)


    print(" Excel Columns:", df.columns.tolist())


    if "company_id" not in df.columns:
        raise ValueError(" Column 'company_id' not found in Excel file.")

    print(" Using column: 'company_id'")
    return df["company_id"].dropna().tolist()

def fetch_company_data(company_id):
    url = f"{BASE_URL}?id={company_id}&api_key={API_KEY}"
    try:
        response = requests.get(url, timeout=10)
        if response.status_code == 200:
            return response.json()
        else:
            print(f" Error {response.status_code} for {company_id}")
            return None
    except Exception as e:
        print(f"Exception for {company_id}:", e)
        return None

def save_raw_data(company_id, data, output_folder="data/raw_json"):
    os.makedirs(output_folder, exist_ok=True)
    filepath = os.path.join(output_folder, f"{company_id}.json")
    with open(filepath, "w") as f:
        json.dump(data, f, indent=4)

