SHOW DATABASES;

SELECT DATABASE();

SHOW TABLES;

INSERT INTO products (name, price, expiration_date) VALUES('soy', 13.90, 23/04/2026);

INSERT INTO products VALUES(1002,'Oatmeal', 'Food', 8.90, 16/04/2026);

SELECT * FROM products;

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
category VARCHAR(100) NOT NULL DEFAULT 'Food',
price NUMERIC(10,2) NOT NULL,
expiration_date DATE
) AUTO_INCREMENT=1001;
