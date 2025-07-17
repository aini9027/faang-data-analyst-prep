Day 1 SQL

-- Create Table
CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER,
  city TEXT
);

-- Insert Records
INSERT INTO customers (id, name, age, city) VALUES
(1, 'Alice', 30, 'New York'),
(2, 'Bob', 22, 'Los Angeles'),
(3, 'Charlie', 35, 'Chicago'),
(4, 'Diana', 28, 'New York'),
(5, 'Ethan', 42, 'Seattle');


-- Select all columns
SELECT * FROM customers;

-- Select specific column
SELECT name, city FROM customers;

-- Filter by city
SELECT * FROM customers WHERE city = 'New York';

-- Filter by age
SELECT * FROM customers WHERE age > 30;

-- Order by age (descending)
SELECT * FROM customers ORDER BY age DESC;

-- Limit to top 2
SELECT * FROM customers LIMIT 2;

-- Use alias
SELECT name AS customer_name, age FROM customers;

