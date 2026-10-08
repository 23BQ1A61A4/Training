CREATE DATABASE business_sales_db;

USE business_sales_db;


-- =========================================
-- 1. CUSTOMERS TABLE
-- =========================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    email VARCHAR(100)
);


-- =========================================
-- 2. CATEGORIES TABLE
-- =========================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);


-- =========================================
-- 3. PRODUCTS TABLE
-- =========================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);


-- =========================================
-- 4. ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);


-- =========================================
-- 5. ORDER ITEMS TABLE
-- =========================================

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);