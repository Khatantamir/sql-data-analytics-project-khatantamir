# SQL Data Analytics Project

## Overview

This project demonstrates a complete data analytics pipeline using SQL and Python to analyze real-world e-commerce transaction data.

The goal of the project is to extract business insights from retail sales data using SQL queries and visualize the results using Python.

The project simulates a typical Data Analyst / Data Scientist workflow:

Dataset → SQL Database → Data Analysis → Visualization → Business Insights

This project highlights practical skills in:

- SQL data analysis
- Data exploration
- Business metrics analysis
- Python data visualization
- Analytics workflow design


## Dataset

The dataset used in this project is the Online Retail Dataset, which contains transactional sales data from an e-commerce business.

Dataset features include:

- Invoice number
- Product description
- Quantity purchased
- Unit price
- Customer ID
- Country
- Transaction date

Each row represents a single product transaction in an order.

Example columns:

InvoiceNo
StockCode
Description
Quantity
InvoiceDate
UnitPrice
CustomerID
Country

The dataset enables analysis of:

- Revenue trends
- Best-selling products
- Customer behavior
- Geographic revenue distribution


## Project Structure

sql-data-analytics-project-khatantamir

data/
online_retail.xlsx

database/
online_retail.db

scripts/
load_to_sqlite.py

sql/
analytics_queries.sql

notebooks/
analytics_visualization.ipynb

images/

README.md


Description:

data/  
Contains the raw dataset.

database/  
SQLite database created from the dataset.

scripts/  
Python script used to load the dataset into the SQLite database.

sql/  
SQL queries used for data analysis.

notebooks/  
Jupyter notebook used for data exploration and visualization.

images/  
Folder for storing visualization outputs.


## Data Pipeline

Dataset (Excel)
↓
Data Cleaning & Loading
↓
SQLite Database
↓
SQL Analytics Queries
↓
Python Data Analysis
↓
Visualization
↓
Business Insights


## SQL Analytics

SQL queries are used to analyze key business metrics.

Example analyses performed:


Total Revenue

SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail;


Total Orders

SELECT COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail;


Top Selling Products

SELECT Description,
SUM(Quantity) AS total_sold
FROM online_retail
GROUP BY Description
ORDER BY total_sold DESC
LIMIT 10;


Revenue by Country

SELECT Country,
SUM(Quantity * UnitPrice) AS revenue
FROM online_retail
GROUP BY Country
ORDER BY revenue DESC;


Monthly Sales Trend

SELECT strftime('%Y-%m', InvoiceDate) AS month,
SUM(Quantity * UnitPrice) AS revenue
FROM online_retail
GROUP BY month
ORDER BY month;


## Data Visualization

Python is used to visualize key analytics insights.

Libraries used:

- pandas
- matplotlib
- seaborn
- sqlite3

Example visualizations:

- Monthly revenue trend
- Top selling products
- Revenue by country


Example chart:

Monthly Revenue Trend

The line chart shows how revenue changes over time, helping identify seasonal patterns and demand fluctuations.


## Business Insights

From the analysis, several insights were identified.

1. Monthly Revenue Trend

Sales increase significantly during the final months of the year, indicating strong seasonal demand.

This suggests that holiday periods drive increased purchasing activity.


2. Top Selling Products

Decorative household items and gift-related products appear among the top-selling items.

This indicates strong demand for home decor and seasonal gift merchandise.


3. Revenue by Country

The United Kingdom generates the majority of total revenue.

Other European countries contribute smaller but meaningful portions of total sales.

This suggests the business is heavily concentrated in the UK market.


## Technologies Used

Python  
SQL (SQLite)  
Pandas  
Matplotlib  
Seaborn  
Jupyter Notebook


## Key Skills Demonstrated

SQL Data Analysis  
Data Exploration  
Business Metrics Analysis  
Data Visualization  
Analytics Pipeline Development  
Python for Data Analysis


## Future Improvements

Potential extensions of this project include:

- Customer segmentation analysis
- Customer lifetime value estimation
- Sales forecasting models
- Interactive dashboards
- Machine learning models for demand prediction


## Author

Khatantamir Otgonbyamba

Data Science / Machine Learning Portfolio Project

GitHub  
https://github.com/Khatantamir
