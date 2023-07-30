SELECT 
    `country_name`, `iso_code`
FROM
    `countries`
WHERE
    LOWER(`country_name`) LIKE '%a%a%a%'
ORDER BY `iso_code` ASC;