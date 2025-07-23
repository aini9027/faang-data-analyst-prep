## 🗓️ Day 1 – Python & SQL Basics

### ✅ What I Learned

#### Python:
- How to write and run basic Python code in Google Colab
- Variables: string, integer, float, boolean
- Basic `if-else` statements and how they control logic
- Loops: `for` and `while` loops to repeat actions

#### SQL:
- Basics of SQL syntax: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Filtering data using numeric and text conditions
- How to create a sample `customers` table for practice

---

### 🤔 What I Found Confusing
- Remembering when to use single quotes around strings in SQL
- Slight confusion between `=` and `==` in Python vs SQL

---

### 📌 To Revisit
- String formatting in Python (`f-strings` vs `.format()`)
- `LIMIT` behavior when combined with `ORDER BY`
- Keyboard shortcuts and markdown formatting in Colab and GitHub

---

### 🔗 Resources Used
- Google Colab for Python notebooks
- SQLiteOnline.com for SQL query testing
- GitHub for version control and documentation
- ChatGPT for guidance and explanations

---

### 💬 Notes to Myself
- I feel confident with the basics so far.
- Tomorrow I want to get more comfortable with lists and dictionaries.
- Good start! Let’s build momentum.



## 📘 SQL Practice Log - Entry 001: LEFT JOIN Basics

### 🗓️ Date: 2025-07-21  
### 🎯 Problem: [LeetCode SQL #175 - Combine Two Tables](https://leetcode.com/problems/combine-two-tables/)  
### 🔍 Topic: LEFT JOIN

---

### ✅ Objective:
Combine data from two tables: `Person` and `Address`, such that all persons are shown even if they don't have an address. Show:
- `firstName`
- `lastName`
- `city`
- `state`

---

### 🧠 Concepts Learned:
- `LEFT JOIN`: Used to get all rows from the **left table** and matching rows from the right table. If there's no match, it fills with `NULL`.
- Aliases: `p` and `a` are **shortcuts** used for table names.
- `ON` clause: This tells SQL how to match rows — in this case, based on `personId`.

---

### 🧪 Final Query:
```sql
SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM 
    Person p
LEFT JOIN 
    Address a
ON 
    p.personId = a.personId;


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


## 📘 SQL Practice Log - Entry 003: Customers Who Never Order

### 🗓️ Date: 2025-07-23  
### 🎯 Problem: [LeetCode SQL #183 - Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/)  
### 🔍 Topic: LEFT JOIN, Aliases, NULL Handling

---

### **Objective**
Find all customers who never placed an order.

---

### **Understanding the Data**
**Customers Table**
- `id`: unique customer ID
- `name`: name of the customer

**Orders Table**
- `id`: unique order ID
- `customerId`: references `Customers.id` to show who placed the order

We need to find customers present in `Customers` but not in `Orders`.

---

### **Key SQL Concepts Learned**
- **LEFT**

Pandas Solution

import pandas as pd

# Create DataFrames
customers = pd.DataFrame({
    'id': [1, 2, 3, 4],
    'name': ['Joe', 'Henry', 'Sam', 'Max']
})

orders = pd.DataFrame({
    'id': [1, 2],
    'customerId': [3, 1]
})

# Left join Customers with Orders
merged = customers.merge(orders, left_on='id', right_on='customerId', how='left')

# Filter customers who have no orders (NaN in customerId)
no_orders = merged[merged['customerId'].isna()]

# Select only customer names
result = no_orders[['name']].rename(columns={'name': 'Customers'})
print(result)
