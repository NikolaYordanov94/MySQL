SELECT 
    c.country_code, COUNT(m.mountain_range) AS mountain_range
FROM
    mountains AS m
        JOIN
    mountains_countries AS mc ON m.id = mc.mountain_id
        JOIN
    countries AS c ON mc.country_code = c.country_code
WHERE
    c.country_name IN ('United States' , 'Russia', 'Bulgaria')
GROUP BY c.country_code
ORDER BY mountain_range DESC;