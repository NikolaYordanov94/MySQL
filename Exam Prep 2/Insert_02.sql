use online_store_db;

INSERT INTO reviews (content, picture_url, published_at, rating)
(SELECT
substring(`description`, 1, 15), 
reverse(`name`), 
DATE('2010-10-10'), 
price / 8 from products
where id >= 5);