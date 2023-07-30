SELECT 
    `user_name`,
    RIGHT(`email`,
        LENGTH(`email`) - LOCATE('@', `email`)) AS `email provider`
FROM
    `users`
ORDER BY `email provider` ASC , `user_name` ASC;