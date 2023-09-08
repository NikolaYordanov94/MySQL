DELIMITER $$
CREATE FUNCTION udf_customer_products_count(`name` VARCHAR(30))
RETURNS INT
DETERMINISTIC

BEGIN
  RETURN (SELECT 
    COUNT(op.product_id) AS total_products
FROM
    orders AS o
        JOIN
    customers AS c ON c.id = o.customer_id
        JOIN
    orders_products AS op ON o.id = op.order_id
WHERE
    c.first_name = `name`);
END $$
DELIMITER ;

SELECT 
    c.first_name,
    c.last_name,
    UDF_CUSTOMER_PRODUCTS_COUNT('Shirley') AS `total_products`
FROM
    customers c
WHERE
    c.first_name = 'Shirley';

