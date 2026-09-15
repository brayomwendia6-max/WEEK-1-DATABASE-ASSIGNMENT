CREATE DATABASE restaurant_management_db;
USE restaurant_management_db;

CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100) NOT NULL,
phone VARCHAR(15) UNIQUE,
email VARCHAR(100)
);
CREATE TABLE menu_categories (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL
);
CREATE TABLE menu_items (
item_id INT PRIMARY KEY AUTO_INCREMENT,
item_name VARCHAR (100) NOT NULL,
category_id INT, 
price DECIMAL(10,2) NOT NULL,
is_available BOOLEAN DEFAULT TRUE,
FOREIGN KEY (category_id) REFERENCES menu_categories(category_id)
);
CREATE TABLE staff (
staff_id INT PRIMARY KEY AUTO_INCREMENT,
staff_name VARCHAR(100) NOT NULL,
role VARCHAR(50),
hire_date DATE
);
CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
staff_id INT,
order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id)REFERENCES customers(customer_id),
FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);
INSERT INTO menu_categories(category_name) VALUES
('Main course'),
('Drinks')
('Dessert');
INSERT INTO customers (full_name, phone,email) VALUES
('Ali Hassan', '0712345678', 'Ali@gmail.com'),
('Asha Juma', '0723456778', 'asha@gmail.com');
INSERT INTO customers (item_name,category_id,price) VALUES
('Chicken Biryani', 1, 850.00),
('Pilau kuku', 1, 700.00),
('Fresh mango juice', 2, 250.00)
('Chocolate cake', 350.00);
INSERT INTO staff (staff_name, role, hire_date)VALUES
('John Doe', 'Waiter' , '2024-01-15')
('Fatma Said' ,'chef', '2023-06-10');
INSERT INTO orders (customer_id , staff_id, total_amount) VALUES
(1,1, 1100.00),
(2,1, 700.00);
