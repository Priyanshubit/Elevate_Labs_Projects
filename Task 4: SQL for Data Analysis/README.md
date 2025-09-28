# 🛒 E-commerce Analytics using SQL  

📊 This project demonstrates **SQL queries for E-commerce Data Analysis**.  
It includes insights on **customer behavior, product performance, revenue generation, and order patterns** using synthetic e-commerce datasets.  

---

## ⚡ Features & Insights
✔️ Top customers based on loyalty score  
✔️ Most selling product category  
✔️ Top payment modes used  
✔️ Best product categories by ratings  
✔️ Revenue & order analysis  
✔️ Customer-product relationships  

---

## 🗂️ Datasets Used
- **synthetic_ecommerce_customers**
- **synthetic_ecommerce_products**
- **synthetic_ecommerce_orders**
- **synthetic_ecommerce_reviews**

---

## 🔑 Key SQL Queries

### 🥇 Top 3 Customers by Loyalty Score
```sql
SELECT customer_id, SUM(loyalty_score) AS Total_score
FROM synthetic_ecommerce_customers
GROUP BY customer_id
ORDER BY Total_score DESC
LIMIT 3;
```


### 🏆 Most Selling Product Category
```sql
SELECT category, SUM(price) AS total_amount
FROM synthetic_ecommerce_products
GROUP BY category
ORDER BY total_amount DESC
LIMIT 1;
```

### 💳 Top 2 Payment Methods
```sql
SELECT payment_method, SUM(order_id) AS total_orders
FROM synthetic_ecommerce_orders
GROUP BY payment_method
ORDER BY total_orders DESC
LIMIT 2;
```

### ⭐ Top 5 Product Categories by Avg Ratings
```sql
SELECT s1.product_category AS Product_Category, AVG(s2.rating) AS Avg_rating
FROM synthetic_ecommerce_orders s1
JOIN synthetic_ecommerce_reviews s2 ON s1.customer_id = s2.customer_id
GROUP BY Product_Category
ORDER BY Avg_rating DESC;
```

### 📈 Average Rating of Top Selling Categories
```sql
SELECT product_category, SUM(order_id) AS total, AVG(rating)
FROM synthetic_ecommerce_orders s1
JOIN synthetic_ecommerce_reviews s2 ON s1.customer_id = s2.customer_id
GROUP BY product_category
ORDER BY total DESC
LIMIT 3;
```

### 💰 Total Revenue Generated
```sql
SELECT SUM(order_value)
FROM synthetic_ecommerce_orders;
```

### 🔎 Products with Price > 200
```sql
SELECT product_name, price
FROM synthetic_ecommerce_products
WHERE price > 200
ORDER BY price DESC;
```

### 📅 Orders in the Last 30 Days
```sql
SELECT COUNT(*)
FROM synthetic_ecommerce_orders
WHERE order_date >= CURRENT_DATE() - INTERVAL 30 DAY;
```

### 👥 Top 3 Customers with Max Orders
```sql
SELECT customer_id, SUM(order_id) AS total_orders
FROM synthetic_ecommerce_orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 3;
```

### 📦 Orders with Customer & Product Details
```sql
SELECT s1.order_id, s1.customer_id, s3.product_name, s3.category, s1.order_value
FROM synthetic_ecommerce_orders s1
JOIN synthetic_ecommerce_reviews s2 ON s1.customer_id = s2.customer_id
JOIN synthetic_ecommerce_products s3 ON s2.product_id = s3.product_id;
```

### 📚 Customers Who Bought "Books"
```sql
SELECT s1.customer_id, s2.category
FROM synthetic_ecommerce_reviews s1
JOIN synthetic_ecommerce_products s2 ON s1.product_id = s2.product_id
WHERE category = 'Books';
```
