DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above(value_above DECIMAL(12, 4))
BEGIN
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    salary >= value_above
ORDER BY first_name ASC , last_name ASC , employee_id ASC;
END $$
DELIMITER ;

call usp_get_employees_salary_above(48100);