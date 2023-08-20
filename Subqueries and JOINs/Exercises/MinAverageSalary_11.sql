SELECT 
    MIN(avg_min_salary) AS min_average_salary
FROM
    (SELECT 
        department_id, AVG(salary) AS avg_min_salary
    FROM
        employees
    GROUP BY department_id) AS subquery;