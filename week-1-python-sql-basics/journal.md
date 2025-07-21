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
