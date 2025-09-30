-- Last 12 months only--

select sum(order_value)
from synthetic_ecommerce_orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH);
