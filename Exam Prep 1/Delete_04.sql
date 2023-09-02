DELETE w FROM waiters AS w
        LEFT JOIN
    orders AS o ON w.id = o.waiter_id 
WHERE
    o.id IS NULL;