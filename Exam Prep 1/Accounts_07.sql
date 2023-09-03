SELECT 
    CONCAT(last_name,
            first_name,
            LENGTH(first_name),
            'Restaurant') AS username,
    REVERSE(SUBSTRING(email, 2, 12)) AS `password`
FROM
    waiters
WHERE
    salary IS NOT NULL AND salary > 0
ORDER BY `password` DESC;