DELIMITER $$
CREATE PROCEDURE udp_happy_hour(`type` VARCHAR(50))
BEGIN
    UPDATE products AS p
    SET price = price * 0.8
    WHERE price >= 10 AND p.type = `type`;
END $$
 
DELIMITER ;
 
CALL udp_happy_hour('Cognac');
 
SELECT *
FROM products
WHERE `type` = 'Cognac';