-- Create Tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Sample Data
INSERT INTO customers VALUES 
(1, 'Amit', 'Delhi', '2023-01-10'),
(2, 'Ravi', 'Mumbai', '2023-03-14'),
(3, 'Sneha', 'Bangalore', '2023-05-20');

INSERT INTO products VALUES 
(101, 'Laptop', 'Electronics', 60000),
(102, 'Smartphone', 'Electronics', 25000),
(103, 'Headphones', 'Accessories', 2000);

INSERT INTO sales VALUES 
(1001, 1, 101, 1, '2023-06-01'),
(1002, 2, 102, 2, '2023-06-03'),
(1003, 1, 103, 1, '2023-06-04'),
(1004, 3, 102, 1, '2023-06-05');