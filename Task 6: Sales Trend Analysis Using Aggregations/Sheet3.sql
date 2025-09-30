-- Specific for 2023 --

select sum(order_value)
from synthetic_ecommerce_orders
WHERE EXTRACT(YEAR FROM order_date) = 2023;
