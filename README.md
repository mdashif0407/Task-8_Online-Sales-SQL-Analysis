# Task-8_Online-Sales-SQL-Analysis
Overview  This project focuses on analyzing monthly sales trends using SQL aggregation techniques. The goal is to identify peak sales periods, understand customer buying patterns, and calculate metrics like revenue and transaction volume from the Online Sales dataset.  Dataset used: Online_Sales.csv Tools used: MySQL Workbench

Objective of the Task:-

 Perform time-based sales analysis
 Extract month and year from date
 Calculate monthly revenue & transaction volume
 Identify top-performing months
 Prepare dashboard-friendly month format
 
Key SQL Concepts Used:-

EXTRACT(YEAR FROM ...)

EXTRACT(MONTH FROM ...)

STR_TO_DATE() to clean date format

SUM() for revenue

COUNT(DISTINCT ...) for transaction volume

DATE_FORMAT() for YYYY-MM formatting

GROUP BY for time series aggregation

Key Insights :-

1️⃣ Monthly revenue shows clear growth patterns, with certain months generating significantly higher sales, indicating potential seasonal demand peaks.

2️⃣ Best-selling product categories contribute the majority of total revenue, showing strong customer preference toward specific segments.

3️⃣ Region-wise analysis reveals unequal performance, with some regions generating the highest total revenue while others have better average revenue per order.

4️⃣ Payment methods show clear popularity trends, with one or two methods dominating usage and contributing the highest revenue.

5️⃣ Top products show both high units sold and strong revenue share, indicating they are the key drivers of business performance.

6️⃣ Quarterly sales indicate seasonal demand spikes, highlighting which time periods experience maximum customer purchases.

7️⃣ Revenue per unit and average revenue per transaction highlight product and region profitability, helping identify the highest-margin segments.
