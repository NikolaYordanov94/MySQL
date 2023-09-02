INSERT INTO products (`name`, `type`, price)
(
SELECT CONCAT(last_name, ' ',
 'specialty'),
 'Cocktail',
 ceiling(0.01 * salary) 
FROM waiters 
WHERE id > 6
);