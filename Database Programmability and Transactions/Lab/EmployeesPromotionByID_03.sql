DELIMITER $$
CREATE PROCEDURE usp_raise_salary_by_id(id INT)
BEGIN
UPDATE employees
SET salary = salary * 1.05
WHERE employee_id = id AND employee_id IS NOT NULL;
END $$
DELIMITER ;

call usp_raise_salary_by_id(17);