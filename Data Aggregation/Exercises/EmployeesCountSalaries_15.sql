SELECT 
    COUNT(`salary`) AS `employees_without_manager`
FROM
    `employees`
WHERE
    `manager_id` IS NULL;