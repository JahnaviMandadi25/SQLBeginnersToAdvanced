USE SQLForDA;  -- Switch to the SQLForDA database.

-- 1.	Retrieve all columns from the car_prices table.

select *   -- Select all columns from the table.
FROM car_price_dataset;  -- Retrieve data from the 'car_prices' table.

-- 	2.	Select only the Brand, Model, and Price from the car_prices table.

SELECT Brand, Model, Price  -- Selects only the 'Brand', 'Model', and 'Price' columns.
FROM car_price_dataset;  -- Retrieves data from the 'car_price_dataset' table.

-- 3. Show unique car brands available in the dataset.
SELECT DISTINCT(Brand)  -- Retrieves only unique values from the 'Brand' column.
FROM car_price_dataset;  -- Fetches data from the 'car_price_dataset' table.

-- 4. Retrieve the first 10 records from the dataset.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Fetches data from the 'car_price_dataset' table.
LIMIT 10;  -- Restricts the output to the first 10 rows.

-- 5. Count the total number of cars in the dataset.
SELECT COUNT(*)  -- Counts the total number of rows (cars) in the table.
FROM car_price_dataset;  -- Retrieves data from the 'car_price_dataset' table.
