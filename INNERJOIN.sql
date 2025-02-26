-- INNER JOIN
USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Retrieve the customer’s first name, last name, order date, and order amount for customers who have placed an order.
SELECT customers.first_name, customers.last_name, orders.order_date, orders.amount  -- Selects required fields.
FROM customers  
JOIN orders ON customers.customer_id = orders.customer_id;  -- Performs an INNER JOIN to match orders with customers.

-- 2. Find the total amount spent by each customer who has placed an order.
SELECT customers.customer_id, customers.first_name, SUM(orders.amount) AS TotalAmountSpent  -- Aggregates total spending per customer.
FROM customers  
JOIN orders ON customers.customer_id = orders.customer_id  
GROUP BY customers.customer_id, customers.first_name;  -- Ensures grouping includes the correct fields.

-- 3. Get the order details (order_id, order_date, amount) along with the customer’s city for each order.
SELECT customers.city, orders.order_id, orders.order_date, orders.amount  -- Includes customer’s city and order details.
FROM customers  
JOIN orders ON customers.customer_id = orders.customer_id;

-- 4. List all orders with customer names but exclude orders where the amount is less than $200.
SELECT customers.first_name, customers.last_name, orders.amount  -- Selects customer names and order amount.
FROM customers  
JOIN orders ON customers.customer_id = orders.customer_id  
WHERE orders.amount >= 200;  -- **Fixed Issue: Changed "<" to ">=" to exclude orders below $200.**

-- 5. Retrieve the latest order date for each customer.
SELECT customers.first_name, customers.last_name, MAX(orders.order_date) AS LatestOrderDate  -- Gets the latest order per customer.
FROM customers  
JOIN orders ON customers.customer_id = orders.customer_id  
GROUP BY customers.customer_id, customers.first_name, customers.last_name;  -- Groups by customer to find the max order date.