#Basic select
SELECT *FROM customers_task_3;

#where (Filtering)
SELECT product_name, price
FROM products_task_3
WHERE price > 10000;

#Order by
SELECT customer_name, city
FROM customers_task_3
ORDER BY customer_name ASC;

#GROUP BY with Aggregates
SELECT c.customer_name, SUM(p.price * o.quantity) AS total_spent
FROM orders_task_3 o
INNER JOIN customers_task_3 c ON o.customer_id = c.customer_id
INNER JOIN products_task_3 p ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

#JOIN
SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM orders_task_3 o
INNER JOIN customers_task_3 c ON o.customer_id = c.customer_id
INNER JOIN products_task_3 p ON o.product_id = p.product_id;

#LIMIT
SELECT product_name, price
FROM products_task_3
ORDER BY price DESC
LIMIT 3;

#Using Aliases (AS)
SELECT p.product_name AS Item, p.price AS Cost
FROM products_task_3 p;

#Date Functions
SELECT MONTH(order_date) AS order_month, COUNT(*) AS total_orders
FROM orders_task_3
GROUP BY order_month;