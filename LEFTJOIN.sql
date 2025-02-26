-- LEFT JOINS

USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Retrieve all customers and their orders, showing NULL for customers who have not placed an order.
SELECT customers.customer_id, customers.first_name, orders.order_id  -- Selects customer details and order ID.
FROM customers  
LEFT JOIN orders ON customers.customer_id = orders.customer_id;  -- Uses LEFT JOIN to include all customers, even those without orders.

-- 2. Find all customers who haven’t placed any orders.
SELECT customers.first_name, orders.order_id  -- Selects customer names and order IDs.
FROM customers  
LEFT JOIN orders ON customers.customer_id = orders.customer_id  
WHERE orders.order_id IS NULL;  -- Filters only customers who have NULL orders (i.e., no orders).

-- 3. Show all customers with their order count, including those with zero orders.
SELECT customers.customer_id, customers.first_name, COUNT(orders.order_id) AS OrderCount  -- Counts orders for each customer.
FROM customers  
LEFT JOIN orders ON customers.customer_id = orders.customer_id  
GROUP BY customers.customer_id, customers.first_name;  -- Groups by customer to ensure correct counting.

-- 4. Retrieve all customers with their last order date, including customers who have never ordered.
SELECT customers.customer_id, customers.first_name, 
       MAX(orders.order_date) AS LastOrderDate  -- Gets the latest order date for each customer.
FROM customers  
LEFT JOIN orders ON customers.customer_id = orders.customer_id  
GROUP BY customers.customer_id, customers.first_name;  -- Groups by customer to ensure correct aggregation.

-- 5. Find customers from Chicago or New York and their order details (even if they have never ordered).
SELECT customers.first_name, customers.city, orders.order_id, orders.order_date, orders.amount  -- Selects customer and order details.
FROM customers  
LEFT JOIN orders ON customers.customer_id = orders.customer_id  
WHERE customers.city IN ('Chicago', 'New York');  -- Filters only customers from Chicago or New York.