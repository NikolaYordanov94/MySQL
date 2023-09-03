SELECT 
    p.id, p.`name`, COUNT(p.id) AS count
FROM
    products AS p
        JOIN
    orders_products AS op ON p.id = op.product_id
        JOIN
    orders AS o ON op.order_id = o.id
GROUP BY p.id
HAVING count >= 5
ORDER BY count DESC , `name` ASC;