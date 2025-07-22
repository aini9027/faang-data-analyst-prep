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


-- Day 2

-- Customers older than 25 AND living in New York
SELECT * FROM customers WHERE age > 25 AND city = 'New York';

-- Customers from Chicago OR Seattle
SELECT * FROM customers WHERE city IN ('Chicago', 'Seattle');

-- Customers with age between 25 and 40
SELECT * FROM customers WHERE age BETWEEN 25 AND 40;

-- Name starts with 'A'
SELECT * FROM customers WHERE name LIKE 'A%';

-- Name contains 'li'
SELECT * FROM customers WHERE name LIKE '%li%';

day 3


Leet code problem - 
## 📘 SQL & Pandas Practice Log - Entry 002: Self Join for Employee-Manager Comparison

### 🗓️ Date: 2025-07-21  
### 🎯 Problem: [LeetCode SQL #181 - Employees Earning More Than Their Managers](https://leetcode.com/problems/employees-earning-more-than-their-managers/)  
### 🔍 Topic: Self Join + Filtering

---

### ✅ Objective:
Return names of employees who earn more than their managers.

---

### 🧠 SQL Concepts Learned:
- **Self Join**: Joining a table with itself to compare two roles (employee vs manager)
- Use `e.managerId = m.id` to match employee with their manager
- Filter: `WHERE e.salary > m.salary`

---

### 🧪 SQL Query:
```sql
SELECT 
    e.name AS Employee
FROM 
    Employee e
JOIN 
    Employee m 
ON 
    e.managerId = m.id
WHERE 
    e.salary > m.salary;
