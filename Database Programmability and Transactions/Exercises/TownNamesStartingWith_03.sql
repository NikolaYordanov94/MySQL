DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(starting_string VARCHAR(10))
BEGIN
SELECT DISTINCT
    t.`name` AS town_name
FROM
    employees AS e
        JOIN
    addresses AS a ON e.address_id = a.address_id
        JOIN
    towns AS t ON a.town_id = t.town_id
WHERE
    LOWER(t.`name`) LIKE CONCAT(LOWER(starting_string), '%')
ORDER BY town_name ASC;
END $$
DELIMITER ;

call usp_get_towns_starting_with('b');