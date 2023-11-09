-- task:1 Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.
SELECT c.id,c.name,c.email,COUNT(o.id) AS total_orders FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name, c.email
ORDER BY total_orders DESC; 




-- Task:2 Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.


SELECT o.id, oi.qty,(oi.qty*oi.unit_price) as total_amount FROM orders o 
JOIN orders_items oi ON o.id=oi.order_id
JOIN products ON oi.product_id=products.id
ORDER BY o.id ASC