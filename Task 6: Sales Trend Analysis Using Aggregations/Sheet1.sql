-- Sales Trend Analysis: Monthly Revenue & Order Volume

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(order_value) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM synthetic_ecommerce_orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
