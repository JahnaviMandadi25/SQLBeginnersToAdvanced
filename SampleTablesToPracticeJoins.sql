-- Creating the customers Table 
USE SQLForDA;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- Sample Data Ingestion 
INSERT INTO customers (first_name, last_name, email, city) VALUES
('John', 'Doe', 'john.doe1@example.com', 'New York'),
('Jane', 'Smith', 'jane.smith1@example.com', 'Los Angeles'),
('Michael', 'Johnson', 'michael.johnson1@example.com', 'Chicago'),
('Emily', 'Davis', 'emily.davis1@example.com', 'Houston'),
('David', 'Wilson', 'david.wilson1@example.com', 'Phoenix'),
('Sarah', 'Miller', 'sarah.miller1@example.com', 'Dallas'),
('Chris', 'Anderson', 'chris.anderson1@example.com', 'Miami'),
('Jessica', 'Brown', 'jessica.brown1@example.com', 'Seattle'),
('Matthew', 'Taylor', 'matthew.taylor1@example.com', 'Boston'),
('Ashley', 'Martinez', 'ashley.martinez1@example.com', 'Denver');



-- Creating the orders Table

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Sample Data Ingestion
INSERT INTO orders (order_date, amount, customer_id) VALUES
('2025-01-01', 150.00, 1),
('2025-01-02', 200.00, 2),
('2025-01-03', 350.00, 3),
('2025-01-04', 400.00, 4),
('2025-01-05', 250.00, 5),
('2025-01-06', 175.00, 6),
('2025-01-07', 300.00, 7),
('2025-01-08', 450.00, 8),
('2025-01-09', 500.00, 9),
('2025-01-10', 600.00, 10),
('2025-01-09', 500.00, 11),
('2025-01-10', 600.00, 12);