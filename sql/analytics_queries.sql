-- TOTAL REVENUE

SELECT 
SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail;



-- TOTAL ORDERS

SELECT 
COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail;



-- TOP 10 PRODUCTS

SELECT 
Description,
SUM(Quantity) AS total_sold
FROM online_retail
GROUP BY Description
ORDER BY total_sold DESC
LIMIT 10;



-- REVENUE BY COUNTRY

SELECT 
Country,
SUM(Quantity * UnitPrice) AS revenue
FROM online_retail
GROUP BY Country
ORDER BY revenue DESC;



-- MONTHLY SALES TREND

SELECT 
strftime('%Y-%m', InvoiceDate) AS month,
SUM(Quantity * UnitPrice) AS revenue
FROM online_retail
GROUP BY month
ORDER BY month;
