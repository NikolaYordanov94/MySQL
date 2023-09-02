drop schema restaurant_db;

SELECT 
    *
FROM
    clients
ORDER BY DATE(birthdate) DESC , id DESC;