SELECT 
    `town_id`, `name`
FROM
    `towns`
WHERE
    LOWER(`name`) LIKE 'm%'
        OR LOWER(`name`) LIKE 'k%'
        OR LOWER(`name`) LIKE 'b%'
        OR LOWER(`name`) LIKE 'e%'
ORDER BY `name` ASC;