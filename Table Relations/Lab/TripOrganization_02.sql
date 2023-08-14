SELECT 
    c.id, v.vehicle_type, CONCAT(c.first_name, ' ', c.last_name)
FROM
    campers c
        JOIN
    vehicles v ON c.id = v.driver_id;