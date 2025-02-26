-- Sorting (ORDER BY)
USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Retrieve all cars sorted by Price in ascending order.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
ORDER BY Price ASC;  -- Sorts the results in ascending order of 'Price' (lowest to highest).

-- 2. Get a list of cars sorted by Year in descending order.
SELECT *  
FROM car_price_dataset  
ORDER BY Year DESC;  -- Sorts cars by 'Year' from newest to oldest.

-- 3. Show all cars sorted by Mileage, from highest to lowest.
SELECT *  
FROM car_price_dataset  
ORDER BY Mileage DESC;  -- Sorts cars by 'Mileage' in descending order (highest first).

-- 4. Retrieve all cars sorted by Brand alphabetically.
SELECT *  
FROM car_price_dataset  
ORDER BY Brand;  -- Sorts cars alphabetically by 'Brand' (A → Z). Default order is ASC.

-- 5. Get the top 5 most expensive cars.
SELECT *  
FROM car_price_dataset  
ORDER BY Price DESC  -- Sorts cars by 'Price' from highest to lowest.
LIMIT 5;  -- Retrieves only the top 5 most expensive cars.