SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    address,
    o.order_datetime AS order_date
FROM
    customers AS c
        JOIN
    orders AS o ON c.id = o.customer_id
WHERE
    YEAR(DATE(o.order_datetime)) <= 2018
ORDER BY full_name DESC;