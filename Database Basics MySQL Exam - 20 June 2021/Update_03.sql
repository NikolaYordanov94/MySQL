UPDATE cars 
SET 
    `condition` = 'C'
WHERE
    (mileage >= 800000 AND `year` <= 2010
        AND make != 'Mercedes-Benz')
        OR (mileage IS NULL AND `year` <= 2010
        AND make != 'Mercedes-Benz');