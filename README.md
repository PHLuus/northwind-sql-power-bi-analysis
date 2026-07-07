# Northwind SQL & Power BI Analysis

## Overview
An end-to-end data analysis project using the Northwind sample database - a fictional company that imports and exports specialty foods. This project explores sales performance and supply chain/order fulfillment metrics using SQL Server for data querying and Power BI for visualization.

## Dataset
Northwind is a Microsoft sample database simulating a trading company's orders, customers, products, employees, and suppliers.
- 91 customers, 830 orders, 2,155 order detail line items, 77 products
- 21 orders (~2.5%) had no recorded ship date and were excluded from fulfillment calculations

## Tools Used
- SQL Server Express / SSMS - data querying and validation
- Power BI Desktop - data modeling and dashboard visuals
- DAX - calculated measures
- GitHub - version control and portfolio hosting

## Business Questions
- Which customers generate the most revenue?
- How long does it take to fulfill an order from placement to shipment?
- Are some shipping carriers faster than others? 
- Which products produces the most revenue?
- Which countries generate the most revenue?
- Who are the top rated customers by revenue?  

## Key Findings
- Top revenue customers: QUICK-Stop, Ernst Handel, and Save-a-lot each generated over $100k in revenue
- Average order fulfillment time: 8.49 days (initially calculated as 8 days due to SQL integer rounding - corrected after cross-checking against Power BI's DAX calculation)
-  Federal Shipping is the fastest carrier at 7.47 days average fulfillment, followed by Speedy Express 8.57 days and United Package 9.23 days
- Côte de Blaye is by far the top revenue-generating product at over $141,000 — more than 1.7x the second-highest product (Thüringer Rostbratwurst)
- USA and Germany are the top two markets by revenue ($245K and $230K), together generating nearly 37.6% of total revenue across all 21 countries
- Total revenue across all orders: $1 265 793.04

## SQL Queries
| File | Description |
|------|-------------|
| [`01_data_validation.sql`](sql/01_data_validation.sql) | Row count checks across core tables |
| [`02_revenue_by_customer.sql`](sql/02_revenue_by_customer.sql) | Total revenue and order count per customer |
| [`03_order_fulfillment_time.sql`](sql/03_order_fulfillment_time.sql) | Average days from order to shipment |
| [`04_fulfillment_by_carrier.sql`](sql/04_fulfillment_by_carrier.sql) | Average fulfillment time and order volume by shipping carrier |
| [`05_top_products_by_revenue.sql`](sql/05_products_by_revenue.sql) | Total revenue by product, ranked highest to lowest |
| [`06_revenue_by_country.sql`](sql/06_revenue_by_country.sql) | Total revenue by shipping destination country, including % of total revenue |
| [`07_total_revenue.sql`](sql/07_total_revenue.sql) | Total revenue |
| [`08_customer_revenue_rank.sql`](sql/08_customer_revenue_rank.sql) | Revenue rank |


## Project Structure
```
northwind-sql-powerbi-analysis/
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_revenue_by_customer.sql
│   ├── 03_order_fulfillment_time.sql
│   ├── 04_fulfillment_by_carrier.sql  
│   ├── 05_products_by_revenue.sql
│   ├── 06_revenue_by_country.sql
│   ├── 07_total_revenue.sql
│   └── 08_customer_revenue_rank.sql
│
├── powerbi/
│   └── northwind_dashboard.pbix
│
├── screenshots/
│   └── dashboard_overview.png
│
└── README.md
```
## Dashboard Preview
Add screen shots when available

## About This Project
Built as part of a data analytics portfolio, applying SQL and Power BI skills alongside prior domain experience in supply chain and logistics operations.