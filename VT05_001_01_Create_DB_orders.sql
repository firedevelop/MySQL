
CREATE TABLE orders (
   order_id INT PRIMARY KEY AUTO_INCREMENT,
   user_id INT,
   product_id INT,
   quantity INT,
   order_date DATE,
   FOREIGN KEY (user_id) REFERENCES users(idx),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Assuming idx is the user ID column in tblUsuarios
-- Inserting one order for each user with a random product and quantity
INSERT INTO orders (user_id, product_id, quantity, order_date) 
SELECT 
    idx AS user_id,
    FLOOR(RAND() * (SELECT MAX(product_id) FROM products) + 1) AS product_id,
    FLOOR(RAND() * 5) + 1 AS quantity,
    CURDATE() AS order_date
FROM users;
