CREATE DATABASE task6_sales_trend;
USE task6_sales_trend;
SELECT DATABASE();
SHOW TABLES;
SHOW DATABASES;
USE sales_analysis;
SHOW TABLES;
USE sales_analysis;
DESCRIBE sales;
USE task6_sales_trend;
SHOW TABLES;
CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    sales_channel VARCHAR(50),
    product_name VARCHAR(150),
    category VARCHAR(100),
    quantity INT,
    revenue_usd DECIMAL(12,2),
    cogs_usd DECIMAL(12,2)
);
SHOW TABLES;
SELECT COUNT(*) AS total_records
FROM sales;
SELECT COUNT(*) AS total_records
FROM sales_analysis.sales;
CREATE DATABASE IF NOT EXISTS task6_sales_trend;
USE task6_sales_trend;

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    region VARCHAR(50),
    product VARCHAR(100),
    category VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    quantity INT
);
INSERT INTO sales
(order_id, order_date, region, product, category, sales, profit, quantity)
VALUES
(1001,'2024-01-05','North','Laptop','Technology',1200.00,240.00,2),
(1002,'2024-01-12','South','Office Chair','Furniture',450.00,90.00,3),
(1003,'2024-01-20','East','Printer','Technology',700.00,140.00,2),
(1004,'2024-02-03','West','Desk','Furniture',650.00,130.00,1),
(1005,'2024-02-15','North','Monitor','Technology',900.00,180.00,3),
(1006,'2024-02-25','South','Notebook','Office Supplies',120.00,30.00,10),
(1007,'2024-03-04','East','Keyboard','Technology',300.00,75.00,5),
(1008,'2024-03-18','West','Office Chair','Furniture',600.00,120.00,4),
(1009,'2024-03-27','North','Printer','Technology',800.00,160.00,2),
(1010,'2024-04-06','South','Desk','Furniture',700.00,140.00,2),
(1011,'2024-04-15','East','Laptop','Technology',1500.00,300.00,2),
(1012,'2024-04-28','West','Notebook','Office Supplies',180.00,45.00,15),
(1013,'2024-05-05','North','Monitor','Technology',1100.00,220.00,4),
(1014,'2024-05-19','South','Keyboard','Technology',350.00,85.00,6),
(1015,'2024-05-29','East','Desk','Furniture',750.00,150.00,2),
(1016,'2024-06-08','West','Printer','Technology',950.00,190.00,3),
(1017,'2024-06-17','North','Office Chair','Furniture',550.00,110.00,3),
(1018,'2024-06-26','South','Laptop','Technology',1800.00,360.00,3),
(1019,'2024-07-07','East','Notebook','Office Supplies',200.00,50.00,20),
(1020,'2024-07-21','West','Monitor','Technology',1000.00,200.00,4),
(1021,'2024-08-02','North','Desk','Furniture',850.00,170.00,2),
(1022,'2024-08-14','South','Printer','Technology',900.00,180.00,3),
(1023,'2024-08-25','East','Office Chair','Furniture',500.00,100.00,3),
(1024,'2024-09-06','West','Laptop','Technology',1600.00,320.00,2),
(1025,'2024-09-18','North','Keyboard','Technology',400.00,100.00,7),
(1026,'2024-10-04','South','Desk','Furniture',800.00,160.00,2),
(1027,'2024-10-16','East','Monitor','Technology',1050.00,210.00,4),
(1028,'2024-11-03','West','Notebook','Office Supplies',250.00,60.00,25),
(1029,'2024-11-15','North','Printer','Technology',1000.00,200.00,3),
(1030,'2024-12-10','South','Laptop','Technology',2000.00,400.00,3);
SELECT COUNT(*) AS total_records
FROM sales;
SELECT *
FROM sales;
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
SELECT
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date)
ORDER BY year;
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales;
SELECT
    AVG(sales) AS average_sales,
    AVG(profit) AS average_profit
FROM sales;
SELECT
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY month_number;
SELECT
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY month_number;
SELECT
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date)
ORDER BY year;
SELECT
    product,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC;
SELECT
    product,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product
ORDER BY total_profit DESC;
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT
    product,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC;
SELECT
    product,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product
ORDER BY total_profit DESC;
SELECT *
FROM sales
ORDER BY sales DESC
LIMIT 1;
SELECT *
FROM sales
ORDER BY profit DESC
LIMIT 1;
CREATE OR REPLACE VIEW monthly_sales_trend AS
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY year, month_number;
SELECT *
FROM monthly_sales_trend;
SELECT
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(sales), 2) AS average_order_sales,
    ROUND(AVG(profit), 2) AS average_order_profit
FROM sales;