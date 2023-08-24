DELIMITER $$
CREATE PROCEDURE usp_get_employees_from_town(town_from VARCHAR(30))
BEGIN
SELECT 
    e.first_name, e.last_name
FROM
    employees AS e
        JOIN
    addresses AS a ON e.address_id = a.address_id
        JOIN
    towns AS t ON a.town_id = t.town_id
WHERE
    t.`name` = town_from
ORDER BY e.first_name ASC , e.last_name ASC , e.employee_id ASC;
END $$
DELIMITER ;

call usp_get_employees_from_town('Sofia');