SELECT 
    `town_id`, `name`
FROM
    `towns`
WHERE
    LOWER(`name`) NOT REGEXP '^(r|b|d)'
ORDER BY `name` ASC;