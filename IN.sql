-- Using IN
USE SQLForDA;

-- 1. Find all cars where the Brand is in ('Toyota', 'Ford', 'Honda').

SELECT Brand, Model, Price  -- Selects the 'Brand', 'Model', and 'Price' columns.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Brand IN ('Toyota', 'Ford', 'Honda');  -- Filters results to include only cars where the 'Brand' is Toyota, Ford, or Honda.

-- 2. Retrieve all cars where the Fuel_Type is either “Diesel”, “Hybrid”, or “Electric”.

SELECT Brand, Fuel_Type  -- Selects 'Brand' and 'Fuel_Type' columns.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Fuel_Type IN ('Diesel', 'Hybrid', 'Electric');  -- Filters to include only cars with 'Diesel', 'Hybrid', or 'Electric' as Fuel_Type.

-- 3. Get all cars where the Transmission type is "Manual", "Automatic", or "Semi-Automatic".

SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Transmission IN ('Manual', 'Automatic', 'Semi-Automatic');  -- Filters results to include only cars with specified transmission types.

-- 4. Find all cars that have 2, 3, or 4 doors.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Doors IN (2, 3, 4);  -- Filters cars where the 'Doors' column is either 2, 3, or 4.

-- 5. Retrieve cars that have an Owner_Count of 1, 2, or 3.
SELECT *  -- Selects all columns from the table.
FROM car_price_dataset  -- Retrieves data from the 'car_price_dataset' table.
WHERE Owner_Count IN (1, 2, 3);  -- Filters cars where the 'Owner_Count' is 1, 2, or 3.
