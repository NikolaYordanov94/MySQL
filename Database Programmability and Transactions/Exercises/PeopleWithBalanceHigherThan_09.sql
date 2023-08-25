DELIMITER $$
CREATE PROCEDURE usp_get_holders_with_balance_higher_than(value_higher_than DECIMAL(12, 4))
BEGIN
SELECT 
    ah.first_name, ah.last_name
FROM
    account_holders AS ah
        JOIN
    accounts AS a ON ah.id = a.account_holder_id
GROUP BY ah.id
HAVING SUM(a.balance) > value_higher_than
ORDER BY ah.id ASC;
END $$
DELIMITER ;

call usp_get_holders_with_balance_higher_than(7000);