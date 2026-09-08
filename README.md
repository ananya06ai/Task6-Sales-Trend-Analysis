# Task 6 - Sales Trend Analysis

## Objective

Analyze sales data using SQL to identify sales trends, profitability, regional performance, product performance, and key business insights.

## Tools Used

* MySQL Workbench
* MySQL
* SQL

## Database

**Database Name:** `task6_sales_trend`

**Table Name:** `sales`

The dataset contains 30 sales records with 8 columns:

* `order_id`
* `order_date`
* `region`
* `product`
* `category`
* `sales`
* `profit`
* `quantity`

## Analysis Performed

The following SQL analyses were performed:

1. Total number of records
2. Complete dataset verification
3. Monthly sales trend
4. Monthly profit trend
5. Yearly sales analysis
6. Sales and profit by region
7. Sales and profit by category
8. Sales by product
9. Profit by product
10. Highest sales order
11. Highest profit order
12. Monthly sales trend view
13. Overall KPI summary

## Key KPIs

The analysis calculates:

* Total Orders
* Total Quantity Sold
* Total Sales
* Total Profit
* Average Order Sales
* Average Order Profit

## Sales Trend Analysis

Monthly sales and profit were analyzed using SQL aggregation functions such as `SUM()` and date functions such as `MONTH()` and `MONTHNAME()`.

## Business Insights

* Technology products contribute significantly to overall sales.
* Laptop and other technology products generate strong sales and profit.
* Regional analysis helps identify differences in sales performance.
* Monthly analysis shows changes in sales and profit throughout the year.
* Profit analysis helps identify the most profitable products and categories.

## SQL Concepts Used

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `SUM()`
* `AVG()`
* `COUNT()`
* `GROUP BY`
* `ORDER BY`
* `MONTH()`
* `MONTHNAME()`
* `YEAR()`
* `LIMIT`
* `CREATE VIEW`

## Deliverables

* `task6_sales_trend.sql` - Complete SQL script
* `screenshots/` - SQL query and output screenshots

## Conclusion

The SQL analysis provides a clear view of sales trends, product performance, regional performance, profitability, and overall business KPIs. These insights can help stakeholders understand sales patterns and identify areas of strong business performance.
