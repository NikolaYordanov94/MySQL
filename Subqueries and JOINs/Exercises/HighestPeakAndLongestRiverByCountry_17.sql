SELECT 
    c.country_name,
    MAX(p.elevation) AS highest_peak_elevation,
    MAX(r.length) AS longest_river_length
FROM
    countries AS c
        LEFT JOIN
    mountains_countries AS mc ON c.country_code = mc.country_code
        LEFT JOIN
    countries_rivers AS cr ON c.country_code = cr.country_code
        LEFT JOIN
    peaks p ON mc.mountain_id = p.mountain_id
        LEFT JOIN
    rivers r ON cr.river_id = r.id
GROUP BY c.country_name
ORDER BY highest_peak_elevation DESC , longest_river_length DESC , c.country_name ASC
LIMIT 5;