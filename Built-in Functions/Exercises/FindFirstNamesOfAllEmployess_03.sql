SELECT 
    `first_name`
FROM
    `employees`
WHERE
    `department_id` IN (3 , 10)
        AND (hire_date >= '1995-01-01' and hire_date <= '2005-12-31')
ORDER BY `employee_id` ASC;