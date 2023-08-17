SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    d.department_id,
    d.`name` AS department_name
FROM
    departments AS d
        JOIN
    employees AS e ON d.manager_id = e.employee_id
ORDER BY e.employee_id ASC
LIMIT 5;