-- Filtering data
USE SQLForDA;

-- 1. Retrieve all cars that cost more than $15,000.
SELECT Brand, Price  -- Selects the 'Brand' and 'Price' columns.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Price > 15000;  -- Filters the results to include only cars with a price greater than $15,000.

-- 2. Find all cars of the brand “Toyota”.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Brand = 'Toyota';  -- Filters the results to include only cars where the 'Brand' column is exactly 'Toyota'.

-- 3. Get all cars that have Automatic transmission.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Transmission = 'Automatic';  -- Filters the results to include only cars with 'Automatic' transmission.

-- 4. List all cars with an Engine_Size greater than 2.5 and a Fuel_Type of Diesel.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Engine_Size > 2.5  -- Filters cars where 'Engine_Size' is greater than 2.5.
AND Fuel_Type = 'Diesel';  -- Filters cars that have 'Diesel' as the Fuel_Type.

-- 5. Retrieve cars that have either “Manual” or “Semi-Automatic” transmission.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Transmission = 'Manual'  -- Filters cars with 'Manual' transmission.
OR Transmission = 'Semi-Automatic';  -- Also includes cars with 'Semi-Automatic' transmission.

-- 6. Find all cars where the Mileage is above 200,000 and Price is below $10,000.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Mileage > 200000  -- Filters cars with Mileage greater than 200,000.
AND Price < 10000;  -- Filters cars where Price is below $10,000.

-- 7. Retrieve all cars where the Owner_Count is less than 3 or Doors are 4.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Owner_Count < 3  -- Filters cars with fewer than 3 owners.
OR Doors = 4;  -- Also includes cars that have exactly 4 doors.