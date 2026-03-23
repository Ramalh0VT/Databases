USE db_2td;

SHOW TABLES;

DESC products;

SELECT * FROM products;

INSERT INTO products VALUES (1, 'Soy protein', 'Food', 13.90, '2026/04/23');

UPDATE products SET name = 'Oatmeal' , price = '8.90' WHERE product_id = 1;

DESCRIBE products;

 






