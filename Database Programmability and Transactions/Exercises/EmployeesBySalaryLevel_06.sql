DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(7))
BEGIN
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    CASE
        WHEN salary_level = 'Low' THEN salary < 30000
        WHEN salary_level = 'Average' THEN (salary >= 30000 AND salary <= 50000)
        WHEN salary_level = 'High' THEN salary > 50000
    END
ORDER BY first_name DESC , last_name DESC;
END $$
DELIMITER ;

call usp_get_employees_by_salary_level('High');