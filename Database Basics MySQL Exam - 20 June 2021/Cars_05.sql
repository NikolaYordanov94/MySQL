drop schema softuni_taxi_company_db;

SELECT 
    make, model, `condition`
FROM
    cars
ORDER BY id ASC;