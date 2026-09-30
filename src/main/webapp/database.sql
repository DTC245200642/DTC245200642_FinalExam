CREATE DATABASE IF NOT EXISTS final_exam_db;
USE final_exam_db;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO products (name, price, quantity) VALUES ('Laptop Dell Inspiron', 15000000, 10);
INSERT INTO products (name, price, quantity) VALUES ('Chuột không dây Logitech', 350000, 50);