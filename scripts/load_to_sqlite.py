import pandas as pd
import sqlite3
import os

excel_path = "data/online_retail.xlsx"
db_path = "database/online_retail.db"

os.makedirs("database", exist_ok=True)

df = pd.read_excel(excel_path)

df.columns = [col.strip().replace(" ", "_") for col in df.columns]

df["InvoiceDate"] = pd.to_datetime(df["InvoiceDate"], errors="coerce")

conn = sqlite3.connect(db_path)

df.to_sql("online_retail", conn, if_exists="replace", index=False)

print("Database created successfully")

conn.close()
