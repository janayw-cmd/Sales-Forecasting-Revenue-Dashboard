-- Total Revenue

SELECT SUM(sales_amount) AS total_revenue
FROM Sales_Data;

-- Monthly Revenue

SELECT
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(sales_amount) AS revenue
FROM Sales_Data
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;

-- Revenue by Region

SELECT region, SUM(sales_amount) AS revenue
FROM Sales_Data
GROUP BY region;

-- Top Products

SELECT product_name, SUM(sales_amount) AS revenue
FROM Sales_Data
GROUP BY product_name
ORDER BY revenue DESC;

-- Forecasting (Moving Average)

SELECT 
    order_date,
    AVG(sales_amount) OVER (
        ORDER BY order_date 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM Sales_Data;
