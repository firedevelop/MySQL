-- Active: 1709107611742@@localhost@3306@contacts
CREATE TABLE products (
   product_id INT PRIMARY KEY AUTO_INCREMENT,
   product_name VARCHAR(50),
   unit_price DECIMAL(10, 2)
);
INSERT INTO products (product_name, unit_price) 
VALUES 
('Product A', 100.00),
('Product B', 75.50),
('Product C', 150.25),
('Product D', 200.00),
('Product E', 50.75);
