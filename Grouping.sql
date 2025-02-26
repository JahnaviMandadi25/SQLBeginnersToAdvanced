-- Grouping Data (GROUP BY, HAVING)
USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Count how many cars exist for each Brand.
SELECT Brand, COUNT(*) AS TotalCars  -- Counts the total number of cars for each brand.
FROM car_price_dataset  
GROUP BY Brand;  -- Groups the result by 'Brand'.

-- 2. Find the average price for each car Brand.
SELECT Brand, AVG(Price) AS AvgPrice  -- Computes the average price of cars for each brand.
FROM car_price_dataset  
GROUP BY Brand;

-- 3. Get the total number of cars per Fuel_Type.
SELECT Fuel_Type, COUNT(*) AS TotalCars  -- Counts the number of cars for each fuel type.
FROM car_price_dataset  
GROUP BY Fuel_Type;

-- 4. Find the highest mileage car for each Transmission type.
SELECT Transmission, MAX(Mileage) AS Max_Mileage  -- Finds the car with the highest mileage for each transmission type.
FROM car_price_dataset  
GROUP BY Transmission;

-- 5. Show the number of cars per year, but only for years where more than 10 cars exist (HAVING COUNT(*) > 10).
SELECT Year, COUNT(*) AS TotalCars  -- Counts cars per year.
FROM car_price_dataset  
GROUP BY Year  
HAVING COUNT(*) > 10;  -- Filters only years where there are more than 10 cars.

-- 6. Find the average engine size per brand, but only for brands where the average engine size is greater than 2.0.
SELECT Brand, AVG(Engine_Size) AS Avg_Engine_Size  -- Computes the average engine size per brand.
FROM car_price_dataset  
GROUP BY Brand  
HAVING AVG(Engine_Size) > 2;  -- Filters only brands where the average engine size is greater than 2.0.