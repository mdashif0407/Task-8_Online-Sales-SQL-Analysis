use practice;
select*from online_sales;
#  Monthly Revenue & Transaction Count
SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT 'ï»¿Transaction_ID') AS total_transactions,
    SUM(Total_Revenue) AS total_revenue,
    AVG(Total_Revenue) AS avg_revenue_per_transaction
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
#  Top 5 Highest Revenue Months
SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS month,
    SUM(Total_Revenue) AS revenue
FROM online_sales
GROUP BY year, month
ORDER BY revenue DESC
LIMIT 5;
#  Daily Peak Revenue
SELECT
    STR_TO_DATE(Date, '%d-%m-%Y') AS sale_day,
    SUM(Total_Revenue) AS daily_revenue,
    COUNT(DISTINCT 'ï»¿Transaction_ID') AS daily_orders
FROM online_sales
GROUP BY sale_day
ORDER BY daily_revenue DESC;
#  Best-Selling Product Categories (Total Revenue)
SELECT
    Product_Category,
    SUM(Total_Revenue) AS total_revenue,
    SUM(Units_Sold) AS units_sold
FROM online_sales
GROUP BY Product_Category
ORDER BY total_revenue DESC;
#  Region-Wise Sales Performance
SELECT
    Region,
    COUNT(DISTINCT 'ï»¿Transaction_ID') AS total_transactions,
    SUM(Total_Revenue) AS total_revenue,
    AVG(Total_Revenue) AS avg_revenue_per_order
FROM online_sales
GROUP BY Region
ORDER BY total_revenue DESC;
# Payment Method Popularity
SELECT
    Payment_Method,
    COUNT(*) AS usage_count,
    SUM(Total_Revenue) AS revenue_generated
FROM online_sales
GROUP BY Payment_Method
ORDER BY usage_count DESC;
# Product-Wise Revenue Contribution
SELECT
    Product_Name,
    SUM(Units_Sold) AS total_units_sold,
    SUM(Total_Revenue) AS total_revenue,
    ROUND(SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM online_sales) * 100, 2) AS revenue_percentage
FROM online_sales
GROUP BY Product_Name
ORDER BY total_revenue DESC;
# Find the Average Selling Price for Each Product Category
SELECT
    Product_Category,
    AVG(Unit_Price) AS avg_unit_price
FROM online_sales
GROUP BY Product_Category
ORDER BY avg_unit_price DESC;
#  Find the Region With the Highest Units Sold
SELECT
    Region,
    SUM(Units_Sold) AS total_units
FROM online_sales
GROUP BY Region
ORDER BY total_units DESC;
#  Top 5 Most Frequently Sold Products
SELECT
    Product_Name,
    SUM(Units_Sold) AS total_units_sold
FROM online_sales
GROUP BY Product_Name
ORDER BY total_units_sold DESC
LIMIT 5;
#  Month-Wise Total Units Sold (Without Using Transaction ID)
SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS month,
    SUM(Units_Sold) AS total_units_sold
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
# Identify the Most Profitable Product Category per Region
SELECT
    Region,
    Product_Category,
    SUM(Total_Revenue) AS category_revenue
FROM online_sales
GROUP BY Region, Product_Category
ORDER BY Region, category_revenue DESC;
#   Best Product for Each Payment Method (Highest Revenue)
SELECT
    Payment_Method,
    Product_Name,
    SUM(Total_Revenue) AS revenue
FROM online_sales
GROUP BY Payment_Method, Product_Name
ORDER BY Payment_Method, revenue DESC;
# Identify Seasonal Demand (Quarterly Units Sold Trend)
SELECT
    QUARTER(STR_TO_DATE(Date, '%d-%m-%Y')) AS quarter,
    SUM(Units_Sold) AS total_units_sold
FROM online_sales
GROUP BY quarter
ORDER BY total_units_sold DESC;
#  Product Price Elasticity Indicator (High Units Sold but Low Price)
SELECT
    Product_Name,
    AVG(Unit_Price) AS avg_price,
    SUM(Units_Sold) AS units_sold,
    SUM(Total_Revenue) AS revenue
FROM online_sales
GROUP BY Product_Name
HAVING AVG(Unit_Price) < (SELECT AVG(Unit_Price) FROM online_sales)
ORDER BY units_sold DESC;
# Which region generates the highest revenue per unit sold?
SELECT
    Region,
    SUM(Total_Revenue) AS total_revenue,
    SUM(Units_Sold) AS total_units_sold,
    (SUM(Total_Revenue) / SUM(Units_Sold)) AS revenue_per_unit
FROM online_sales
GROUP BY Region
ORDER BY revenue_per_unit DESC;
# Which product category has the highest average revenue per sale
SELECT
    Product_Category,
    AVG(Total_Revenue) AS avg_revenue_per_sale
FROM online_sales
GROUP BY Product_Category
ORDER BY avg_revenue_per_sale DESC;













