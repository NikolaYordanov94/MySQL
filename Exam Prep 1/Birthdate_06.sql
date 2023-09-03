SELECT 
    first_name, last_name, birthdate, review
FROM
    clients
WHERE
    card IS NULL
        AND (DATE(birthdate) BETWEEN '1978-01-01' AND '1993-01-01')
ORDER BY last_name DESC , id ASC
LIMIT 5;