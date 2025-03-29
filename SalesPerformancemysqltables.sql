CREATE database salesperformance;
USE salesperformance;
DROP Table products;

-- Create tables for sales, products, and employees
CREATE TABLE Sales (
    sale_id VARCHAR(50),
    product_id VARCHAR(50),
    employee_id VARCHAR(50),
    sale_amount DECIMAL(10, 2),
    sale_date DATETIME
);
CREATE TABLE Products (
    product_id VARCHAR(50),
    product_name VARCHAR(500),
    category VARCHAR(50)
);
CREATE TABLE Employees (
    employee_id VARCHAR(50),
    employee_name VARCHAR(100),
    region VARCHAR(50)
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/amazon_sales_perf_employee.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','  -- CSV delimiter
ENCLOSED BY '"'           -- Optional, if your fields are enclosed in double quotes
LINES TERMINATED BY '\n'  -- Line break delimiter (usually \n)
IGNORE 1 LINES            -- Skip header row
(employee_id, employee_name, region);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/amazon_sales_perf_sales.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','  -- CSV delimiter
ENCLOSED BY '"'           -- Optional, if your fields are enclosed in double quotes
LINES TERMINATED BY '\n'  -- Line break delimiter (usually \n)
IGNORE 1 LINES            -- Skip header row
(sale_id, product_id, employee_id, sale_amount, sale_date);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/amazon_sales_perf_product.csv'
INTO TABLE products
FIELDS TERMINATED BY ','  -- CSV delimiter
ENCLOSED BY '"'           -- Optional, if your fields are enclosed in double quotes
LINES TERMINATED BY '\n'  -- Line break delimiter (usually \n)
IGNORE 1 LINES            -- Skip header row
(product_id, product_name, category);

Select * from Sales;
Select * from Products;
Select * from Employees;






