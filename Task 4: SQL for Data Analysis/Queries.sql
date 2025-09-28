-- TOP 3 CUSTOMERS BASED ON LOYALTY SCORE --  

select customer_id, sum(loyalty_score) as Total_score
from synthetic_ecommerce_customers
group by customer_id
order by Total_score desc
limit 3;

-- MOST SELLING PRODUCT CATEGORY --

select category, sum(price) as total_amount
from synthetic_ecommerce_products
group by category
order by total_amount desc
limit 1;

-- TOP 2 PAYMENT MODE --
select payment_method, sum(order_id) as total_orders
from synthetic_ecommerce_orders
group by payment_method
order by total_orders desc
limit 2;

-- TOP 5 PRODUCT CATEGORIES BASED ON AVG RATINGS --
select s1.product_category as Product_Category, avg(s2.rating) as Avg_rating
from synthetic_ecommerce_orders s1
join synthetic_ecommerce_reviews s2
on s1.customer_id=s2.customer_id
group by Product_Category
order by Avg_rating desc;


-- AVG RATING OF TOP SELLING CATEGORIES --

select product_category, sum(order_id) as total, avg(rating)
from synthetic_ecommerce_orders s1
join synthetic_ecommerce_reviews s2
on s1.customer_id=s2.customer_id
group by product_category
order by total desc
limit 3;

select product_category, sum(order_id) as total
from synthetic_ecommerce_orders s1
group by product_category
order by total desc
limit 3;

-- TOTAL REVENUE GENERATED --
select sum(order_value)
from synthetic_ecommerce_orders;



-- Show all products with their prices greater than 200--

select count(*)
from synthetic_ecommerce_products
where price > 200
order by price desc;

select product_name, price
from synthetic_ecommerce_products
where price > 200
order by price desc;


-- Find the total number of orders placed in the database--
select count(order_id)
from synthetic_ecommerce_orders;

-- Get the distinct list of product categories --
select distinct (product_category)
from synthetic_ecommerce_orders;

-- Retrieve all orders placed in the last 30 days --

select max(order_date)
from synthetic_ecommerce_orders;

select count(*)
from synthetic_ecommerce_orders
where order_date between '2025-08-28' and '2025-09-26'; 

select count(*)
from synthetic_ecommerce_orders
where order_date>= current_date()- interval 30 day;

-- Show the average order value per customer --

select customer_id, avg(order_value)
from synthetic_ecommerce_orders
group by customer_id
order by avg(order_value) desc;

select avg(order_value)
from synthetic_ecommerc e_orders
order by order_value desc;

-- Show the Top 3 customers who have placed the maximum number of orders --
select distinct customer_id, sum(order_id) as total_orders
from synthetic_ecommerce_orders
group by customer_id
order by total_orders desc
limit 3;


-- List each order with customer name and product details --
select s1.order_id, s1.customer_id, s3.product_name, s3.category, s1.order_value
from synthetic_ecommerce_orders s1
join synthetic_ecommerce_reviews s2 on s1.customer_id=s2.customer_id 
join synthetic_ecommerce_products s3 on s2.product_id=s3.product_id;

-- Find customers who bought a specific product (e.g., "Books") --

select s1.customer_id, s2.category
from synthetic_ecommerce_reviews s1
join synthetic_ecommerce_products s2 on s1.product_id=s2.product_id
where category='Books';

select count(*)
from synthetic_ecommerce_reviews s1
join synthetic_ecommerce_products s2 on s1.product_id=s2.product_id
where category='Books';

-- Show total revenue generated per product category --
select 


