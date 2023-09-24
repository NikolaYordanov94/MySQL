SELECT 
    c.full_name,
    COUNT(co.car_id) AS count_of_cars,
    SUM(co.bill) AS total_sum
FROM
    clients AS c
        JOIN
    courses AS co ON c.id = co.client_id
GROUP BY c.id
HAVING count_of_cars > 1
    AND SUBSTRING(c.full_name, 2, 1) LIKE 'a'
ORDER BY c.full_name ASC;

