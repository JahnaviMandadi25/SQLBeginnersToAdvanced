 -- Removing Duplicates (DISTINCT)
 USE SQLForDA;  -- Switch to the 'SQLForDA' database.

-- 1. Retrieve a list of unique car brands.
SELECT DISTINCT Brand  -- Selects only unique values from the 'Brand' column.
FROM car_price_dataset;

-- 2. Get all unique Fuel_Type values available in the dataset.
SELECT DISTINCT Fuel_Type  -- Selects unique values from the 'Fuel_Type' column.
FROM car_price_dataset;

-- 3. Find all distinct Transmission types in the dataset.
SELECT DISTINCT Transmission  -- Selects unique values from the 'Transmission' column.
FROM car_price_dataset;

-- 4. Get a list of unique Owner_Count values.
SELECT DISTINCT Owner_Count  -- Selects unique values from the 'Owner_Count' column.
FROM car_price_dataset;  