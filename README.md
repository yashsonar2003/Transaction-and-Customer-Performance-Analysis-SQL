# Transaction-and-Customer-Performance-Analysis-SQL

# Project Overview:
This project perform an end-to-end SQL analysis on Transaction and Customer data.
The goal is to identify business insights such as:
- Top Customer,
- High-Revenue Cities,
- Cancellation Trends,
- Inactive Customer.

# Tools and Skill Used this Project:
- SQL
  1) Join (Inner Join, Left Join).
  2) Aggregations (SUM, COUNT, AVG)
  3) Subqueries
  4) Business Analysis

# Database used:
- Transaction

# Datasets Used:
-- Transaction Table:
- transaction_id
- customer_id
- product_id
- quantity
- amount
- status
- city
- transaction_date

-- Customer Table:
- customer_id
- customer_name
- age
- gender
- city

# Project Structure:

Transaction-and-Customer-Performance-Analysis-SQL/
│
├── README.md
├── Data/
│   ├── Customer.csv
│   └── Transaction.csv
│
├── Queries/
│   ├── 01_Data_Quality.sql
│   ├── 02_KPI.sql
│   ├── 03_City_Analysis.sql
│   ├── 05_Time_Analysis.sql
│   ├── 06_Risk_and_Inactive_Customers.sql
│   └── 07_Advance_Queries.sql
│
└── Insights/
    └── Business_Insights.md


# Business Problem:
1) Who are the best customers?
2) Which cities bring most revenue?
3) Which locations have high cancellation rates?
4) How customer behavior changes over time?
5) Which customers are risky or inactive?



# Analysis Performed:
1) Data Quality Checks.
2) Revenue and Transaction KPI's.
3) City-Wise Performance Analysis.
4) Customer Behavior Analysis.
5) Ranking Top Customer using Window functions.
6) Identifying Risky and Inactive Customers.
7) Time-Based Revenue Treands.

# Key Outcomes:
- Identified Top Revenue-Generating Customers.
- Found Cities with High Revenue and High Cancellation Rates.
- Detected Inactive Customers for Re-engagement
- Highlighted Risk Areas Affecting Business Performance.

---
