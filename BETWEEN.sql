-- Using BETWEEN
USE SQLForDA;

-- 1. Retrieve all orders placed between 2024 and 2024.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Year BETWEEN '2022' AND '2024';  -- Filters records where 'Year' is between 2022 and 2024 (inclusive).

-- 2. Get Brands whose Doors are between 2 and 3.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Doors BETWEEN '2' AND '3';  -- Filters cars where the 'Doors' value is between 2 and 3 (inclusive).

-- 3. Find brands with a price between 5000 and 8000.
SELECT Brand, Price  -- Selects only the 'Brand' and 'Price' columns.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Price BETWEEN 5000 AND 8000;  -- Filters records where 'Price' is between 5000 and 8000 (inclusive).

