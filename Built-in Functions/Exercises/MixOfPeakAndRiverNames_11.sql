SELECT 
    p.peak_name,
    r.river_name,
    CONCAT(LOWER(LEFT(p.peak_name,
                        LENGTH(p.peak_name) - 1)),
            LOWER(r.river_name)) AS `mix`
FROM
    `peaks` p,
    `rivers` r
WHERE
    RIGHT(UPPER(p.peak_name), 1) = LEFT(UPPER(r.river_name), 1)
ORDER BY `mix` ASC;
