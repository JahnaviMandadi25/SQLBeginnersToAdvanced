-- Aggregation Functions (SUM, AVG, COUNT, MIN, MAX)
USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Find the total number of cars in the dataset.
SELECT COUNT(Brand) AS TotalCars  -- Counts the total number of cars based on the 'Brand' column.
FROM car_price_dataset;

-- 2. Calculate the average price of all cars.
SELECT AVG(Price) AS AvgPrice  -- Computes the average price of all cars.
FROM car_price_dataset;

-- 3. Find the minimum and maximum price of cars in the dataset.
SELECT MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice  -- Retrieves the lowest and highest car prices.
FROM car_price_dataset;

-- 4. Get the total number of owners for all cars combined.
SELECT SUM(Owner_Count) AS TotalOwners  -- Sums up all owner counts to get the total number of ownerships.
FROM car_price_dataset;

-- 5. Find the average mileage of all cars.
SELECT AVG(Mileage) AS AvgMileage  -- Computes the average mileage of all cars.
FROM car_price_dataset;