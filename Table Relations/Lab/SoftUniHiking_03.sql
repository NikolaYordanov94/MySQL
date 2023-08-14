SELECT 
    r.starting_point,
    r.end_point,
    r.leader_id,
    CONCAT(c.first_name, ' ', c.last_name)
FROM
    routes r
        JOIN
    campers c ON c.id = r.leader_id;
