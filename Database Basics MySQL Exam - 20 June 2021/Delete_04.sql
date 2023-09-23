DELETE c FROM clients AS c
        LEFT JOIN
    courses AS co ON c.id = co.client_id 
WHERE
    LENGTH(c.full_name) > 3
    AND co.id IS NULL;