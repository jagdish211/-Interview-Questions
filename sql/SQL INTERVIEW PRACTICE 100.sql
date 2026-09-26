# SQL INTERVIEW QUESTIONS & ANSWERS

### Beginner → Intermediate → Advanced → Practical

---

# 🟢 BASIC SQL

## 1. What is SQL?

**Answer:**
SQL (Structured Query Language) is a language used to **store, retrieve, manipulate, and manage data** in relational databases.

**Example:**

```sql
SELECT * FROM employees;
```

---

## 2. What is a Database?

**Answer:**
A database is an organized collection of data that can be easily stored, accessed, and managed.

**Example:**

```text
Company Database
│
├── Employees
├── Departments
├── Customers
└── Orders
```

---

## 3. What is DBMS?

**Answer:**
DBMS (Database Management System) is software used to create, store, manage, and access databases.

**Examples:** MySQL, Oracle, PostgreSQL, SQL Server.

---

## 4. DBMS vs RDBMS

| DBMS                                | RDBMS                     |
| ----------------------------------- | ------------------------- |
| Manages data                        | Manages relational data   |
| Relationships may not exist         | Tables are related        |
| May not follow strict normalization | Supports normalization    |
| Example: some file-based systems    | MySQL, Oracle, PostgreSQL |

**Interview answer:**
RDBMS is a type of DBMS that stores data in related tables.

---

## 5. What is a Table?

**Answer:**
A table stores data in the form of **rows and columns**.

```text
EMPLOYEES
┌────┬────────┬────────┐
│ ID │ Name   │ Salary │
├────┼────────┼────────┤
│ 1  │ Rahul  │ 50000  │
│ 2  │ Amit   │ 60000  │
└────┴────────┴────────┘
```

---

## 6. What is a Row and Column?

**Row:** Represents one record.

**Column:** Represents one attribute/field.

```text
ID | Name | Salary
---+------+-------
1  | Amit | 50000
↑
Row = complete record

Column = ID / Name / Salary
```

---

## 7. What are SQL Commands?

SQL commands are generally divided into:

```text
SQL
│
├── DDL
├── DML
├── DQL
├── DCL
└── TCL
```

---

## 8. Explain DDL, DML, DQL, DCL and TCL

| Type | Meaning                      | Commands                      |
| ---- | ---------------------------- | ----------------------------- |
| DDL  | Data Definition Language     | CREATE, ALTER, DROP, TRUNCATE |
| DML  | Data Manipulation Language   | INSERT, UPDATE, DELETE        |
| DQL  | Data Query Language          | SELECT                        |
| DCL  | Data Control Language        | GRANT, REVOKE                 |
| TCL  | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT   |

---

## 9. What is a Primary Key?

**Answer:**
A Primary Key uniquely identifies every record in a table.

**Properties:**

* Unique
* Cannot contain NULL
* One primary key constraint per table

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50)
);
```

```text
Employees
┌────┬───────┐
│ ID │ Name  │
├────┼───────┤
│ 1  │ Amit  │ ← unique
│ 2  │ Rahul │
└────┴───────┘
```

---

## 10. What is a Foreign Key?

**Answer:**
A Foreign Key creates a relationship between two tables.

```text
DEPARTMENT              EMPLOYEE
┌────┬───────┐          ┌────┬──────┬─────────┐
│ id │ name  │          │ id │ name │ dept_id │
├────┼───────┤          ├────┼──────┼─────────┤
│ 10 │ IT    │◄─────────│ 1  │ Amit │ 10      │
│ 20 │ HR    │          │ 2  │ Ravi │ 20      │
└────┴───────┘          └────┴──────┴─────────┘
       PK                       FK
```

```sql
FOREIGN KEY (dept_id)
REFERENCES department(id);
```

---

## 11. What is UNIQUE Constraint?

Ensures that values in a column are unique.

```sql
CREATE TABLE users (
    id INT,
    email VARCHAR(100) UNIQUE
);
```

---

## 12. What is NOT NULL?

Prevents a column from containing NULL values.

```sql
name VARCHAR(50) NOT NULL
```

---

## 13. What is DEFAULT?

Provides a default value when no value is supplied.

```sql
status VARCHAR(20) DEFAULT 'Active'
```

---

## 14. What is CHECK?

Ensures that data satisfies a condition.

```sql
age INT CHECK (age >= 18)
```

---

## 15. DELETE vs DROP vs TRUNCATE

| DELETE           | TRUNCATE         | DROP                    |
| ---------------- | ---------------- | ----------------------- |
| Deletes rows     | Deletes all rows | Deletes table           |
| `WHERE` possible | No WHERE         | Table structure removed |
| Table remains    | Table remains    | Table removed           |

```sql
DELETE FROM employees WHERE id = 5;

TRUNCATE TABLE employees;

DROP TABLE employees;
```

**Easy memory:**

```text
DELETE     → Remove selected data
TRUNCATE   → Remove all data
DROP       → Remove table
```

---

## 16. What is SELECT?

Used to retrieve data.

```sql
SELECT name, salary
FROM employees;
```

---

## 17. What is WHERE?

Filters rows based on a condition.

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

---

## 18. What is ORDER BY?

Sorts query results.

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

`ASC` → ascending
`DESC` → descending

---

## 19. What is DISTINCT?

Removes duplicate values from the result.

```sql
SELECT DISTINCT department
FROM employees;
```

---

## 20. What is LIMIT?

Restricts the number of returned rows.

```sql
SELECT *
FROM employees
LIMIT 5;
```

---

# 🟡 INTERMEDIATE SQL

## 21. What is GROUP BY?

Groups rows having the same values.

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

```text
Employees
   ↓
GROUP BY department
   ↓
IT → 10
HR → 5
Sales → 8
```

---

## 22. What is HAVING?

`HAVING` filters grouped results.

```sql
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```

---

## 23. WHERE vs HAVING

| WHERE                     | HAVING                     |
| ------------------------- | -------------------------- |
| Filters rows              | Filters groups             |
| Before GROUP BY           | After GROUP BY             |
| Usually used with columns | Often used with aggregates |

```sql
WHERE salary > 50000

HAVING AVG(salary) > 50000
```

---

## 24. What are Aggregate Functions?

Functions that perform calculations on multiple rows.

```text
COUNT()
SUM()
AVG()
MIN()
MAX()
```

---

## 25. Explain COUNT, SUM, AVG, MIN, MAX

```sql
SELECT
    COUNT(*) AS total,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;
```

---

# 🔗 JOINS

## 26. What is a JOIN?

A JOIN combines data from two or more tables using related columns.

```text
Table A             Table B
┌────┬──────┐       ┌────┬──────┐
│ ID │ Name │       │ ID │ Dept │
└────┴──────┘       └────┴──────┘
        │
        └── JOIN ──►
```

---

## 27. INNER JOIN

Returns only matching records from both tables.

```sql
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
```

```text
Employees     Departments
   A              A
   B       ∩      B
   C              D

Result → A, B
```

---

## 28. LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

```sql
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
```

```text
LEFT JOIN

┌───────────┐
│ LEFT      │████████
│ TABLE     │████████
└───────────┘
      +
 matching right rows
```

---

## 29. RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

```sql
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;
```

---

## 30. FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

```text
LEFT TABLE  ∪  RIGHT TABLE

A B C       B C D

Result:
A B C D
```

**MySQL note:** MySQL does not directly support `FULL OUTER JOIN`; it can be simulated using `LEFT JOIN + UNION + RIGHT JOIN`.

---

## 31. INNER JOIN vs LEFT JOIN

| INNER JOIN             | LEFT JOIN                    |
| ---------------------- | ---------------------------- |
| Only matching rows     | All left rows                |
| Unmatched rows removed | Unmatched left rows retained |

---

## 32. What is SELF JOIN?

A table joined with itself.

Example: Employees and their managers.

```sql
SELECT
    e.name AS employee,
    m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;
```

```text
Employees
   │
   ├── Amit
   │     ↓ manager
   │   Rahul
   │
   └── Sameer
         ↓ manager
       Rahul
```

---

## 33. What is CROSS JOIN?

Returns every possible combination of rows.

If table A has 3 rows and B has 4 rows:

```text
3 × 4 = 12 rows
```

```sql
SELECT *
FROM colors
CROSS JOIN sizes;
```

---

## 34. What is a Subquery?

A query inside another query.

```sql
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

```text
Outer Query
     ↑
     │
Subquery
     ↓
AVG Salary
```

---

## 35. What is a Correlated Subquery?

A subquery that depends on the outer query and executes for each outer row.

```sql
SELECT e.name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
```

---

## 36. What is a CTE?

CTE = Common Table Expression.

It creates a temporary named result set for a query.

```sql
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)
SELECT *
FROM high_salary;
```

---

## 37. CTE vs Subquery

| CTE                                              | Subquery                |
| ------------------------------------------------ | ----------------------- |
| Uses `WITH`                                      | Inside another query    |
| More readable for complex queries                | Good for simple queries |
| Can be referenced multiple times in some systems | Usually written inline  |

---

## 38. What is CASE?

Used for conditional logic.

```sql
SELECT name, salary,
CASE
    WHEN salary >= 80000 THEN 'High'
    WHEN salary >= 50000 THEN 'Medium'
    ELSE 'Low'
END AS salary_category
FROM employees;
```

---

## 39. What is COALESCE()?

Returns the first non-NULL value.

```sql
SELECT COALESCE(phone, 'Not Available')
FROM customers;
```

Example:

```text
NULL, NULL, "9876543210"
              ↑
          Returned value
```

---

## 40. What is NULL?

`NULL` means a value is **missing, unknown, or not available**.

It is not the same as:

```text
0
''
'NULL'
```

---

## 41. How do you find NULL values?

```sql
SELECT *
FROM employees
WHERE manager_id IS NULL;
```

Use:

```sql
IS NULL
IS NOT NULL
```

Not:

```sql
= NULL
```

---

## 42. How do you remove duplicate records?

For displaying unique values:

```sql
SELECT DISTINCT name
FROM employees;
```

For identifying duplicates:

```sql
SELECT email, COUNT(*)
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
```

---

## 43. What is UNION?

Combines the results of two queries and removes duplicates.

```sql
SELECT city FROM customers
UNION
SELECT city FROM suppliers;
```

---

## 44. UNION vs UNION ALL

| UNION              | UNION ALL        |
| ------------------ | ---------------- |
| Removes duplicates | Keeps duplicates |
| Usually slower     | Usually faster   |

---

## 45. What is an Alias?

A temporary name given to a table or column.

```sql
SELECT
    salary AS employee_salary
FROM employees;
```

Table alias:

```sql
SELECT e.name
FROM employees AS e;
```

---

# 🔵 ADVANCED SQL

## 46. What are Window Functions?

Window functions perform calculations across related rows without combining them into one row.

```sql
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
```

```text
Rows
 ↓
WINDOW FUNCTION
 ↓
Amit   80000   1
Rahul  70000   2
Ravi   60000   3

Original rows remain.
```

---

## 47. What is ROW_NUMBER()?

Assigns a unique sequential number to each row.

```sql
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
FROM employees;
```

Result:

```text
Amit   80000   1
Rahul  70000   2
Ravi   70000   3
```

---

## 48. What is RANK()?

Assigns the same rank to tied values and skips the next rank.

```text
Salary    Rank
80000      1
70000      2
70000      2
60000      4
```

---

## 49. What is DENSE_RANK()?

Assigns the same rank to tied values but does not skip ranks.

```text
Salary    Rank
80000      1
70000      2
70000      2
60000      3
```

---

## 50. RANK vs DENSE_RANK

```text
Values: 100, 90, 90, 80

RANK:
1, 2, 2, 4

DENSE_RANK:
1, 2, 2, 3
```

---

## 51. What is PARTITION BY?

Divides data into groups for a window function.

```sql
SELECT
    name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_rank
FROM employees;
```

```text
Employees
    │
    ├── IT
    │    ├── Rank 1
    │    └── Rank 2
    │
    └── HR
         ├── Rank 1
         └── Rank 2
```

---

## 52. What is LAG()?

Returns a value from a previous row.

```sql
SELECT
    month,
    sales,
    LAG(sales) OVER (ORDER BY month) AS previous_sales
FROM monthly_sales;
```

```text
Jan → NULL
Feb → Jan sales
Mar → Feb sales
```

---

## 53. What is LEAD()?

Returns a value from a following row.

```sql
SELECT
    month,
    sales,
    LEAD(sales) OVER (ORDER BY month) AS next_sales
FROM monthly_sales;
```

```text
Jan → Feb sales
Feb → Mar sales
Mar → NULL
```

---

## 54. What is a Running Total?

A running total is the cumulative sum of values.

```text
Month   Sales   Running Total
Jan     100     100
Feb     200     300
Mar     150     450
```

---

## 55. How do you calculate Running Total?

```sql
SELECT
    order_date,
    sales,
    SUM(sales) OVER (
        ORDER BY order_date
    ) AS running_total
FROM sales;
```

---

## 56. Find Second-Highest Salary

Simple approach:

```sql
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

Using `DENSE_RANK()`:

```sql
WITH ranked AS (
    SELECT
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS rnk
    FROM employees
)
SELECT salary
FROM ranked
WHERE rnk = 2;
```

---

## 57. Find Nth-Highest Salary

```sql
WITH ranked AS (
    SELECT
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS rnk
    FROM employees
)
SELECT salary
FROM ranked
WHERE rnk = 3;
```

Here `3` means third-highest salary.

---

## 58. Find Duplicate Records

```sql
SELECT email, COUNT(*) AS total
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
```

---

## 59. Employees Earning More Than Their Manager

```sql
SELECT
    e.name AS employee,
    e.salary AS employee_salary,
    m.name AS manager,
    m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
```

This is a common **SELF JOIN** interview problem.

---

## 60. Highest Salary in Each Department

```sql
SELECT
    department_id,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;
```

---

## 61. Top 3 Employees in Each Department

```sql
WITH ranked AS (
    SELECT
        name,
        department_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS rnk
    FROM employees
)
SELECT *
FROM ranked
WHERE rnk <= 3;
```

---

## 62. Customers Who Never Placed an Order

```sql
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

```text
Customers
   │
   ├── Has Order → exclude
   │
   └── No Order  → include
```

---

## 63. Most Frequently Purchased Product

```sql
SELECT
    product_id,
    SUM(quantity) AS total_quantity
FROM order_details
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 1;
```

---

## 64. Month-over-Month Growth

```sql
WITH monthly AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(sales) AS sales
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    month,
    sales,
    LAG(sales) OVER (ORDER BY month) AS previous_sales,
    ROUND(
        (sales - LAG(sales) OVER (ORDER BY month))
        / LAG(sales) OVER (ORDER BY month) * 100,
        2
    ) AS growth_percent
FROM monthly;
```

Formula:

```text
Current - Previous
------------------ × 100
    Previous
```

---

## 65. Year-over-Year Growth

```sql
WITH yearly AS (
    SELECT
        YEAR(order_date) AS year,
        SUM(sales) AS sales
    FROM orders
    GROUP BY YEAR(order_date)
)
SELECT
    year,
    sales,
    LAG(sales) OVER (ORDER BY year) AS previous_sales
FROM yearly;
```

Formula:

```text
(Current Year Sales - Previous Year Sales)
------------------------------------------ × 100
       Previous Year Sales
```

---

## 66. Find Consecutive Dates/Records

A common approach uses `LAG()`.

```sql
SELECT
    employee_id,
    login_date,
    LAG(login_date) OVER (
        PARTITION BY employee_id
        ORDER BY login_date
    ) AS previous_date
FROM employee_logins;
```

Then compare the current date with the previous date.

---

## 67. What is a Recursive CTE?

A Recursive CTE repeatedly references itself to process hierarchical or sequential data.

Example:

```text
CEO
 │
 ├── Manager
 │    ├── Employee
 │    └── Employee
 │
 └── Manager
      └── Employee
```

Example syntax:

```sql
WITH RECURSIVE employee_tree AS (
    SELECT employee_id, name, manager_id
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id, e.name, e.manager_id
    FROM employees e
    JOIN employee_tree t
    ON e.manager_id = t.employee_id
)
SELECT *
FROM employee_tree;
```

---

## 68. What is a View?

A View is a virtual table based on a SQL query.

```sql
CREATE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 50000;
```

Then:

```sql
SELECT *
FROM high_salary_employees;
```

---

## 69. What is an Index?

An index improves the speed of data retrieval.

```sql
CREATE INDEX idx_employee_name
ON employees(name);
```

Concept:

```text
Without Index
Table → Search many rows

With Index
Index → Locate data faster → Table
```

**Important:** Indexes can improve reads but also add storage and can increase the cost of inserts/updates/deletes.

---

## 70. Clustered vs Non-Clustered Index

The exact terminology and behavior varies by database system.

Generally:

| Clustered                                                                | Non-Clustered                      |
| ------------------------------------------------------------------------ | ---------------------------------- |
| Determines/controls physical row organization in systems that support it | Separate index structure           |
| Usually limited in number, often one                                     | Multiple can usually exist         |
| Good for ordered/range access                                            | Useful for specific lookup columns |

---

## 71. What is Query Optimization?

Query optimization means improving a query so it uses fewer resources and executes efficiently.

Common techniques:

```text
Avoid SELECT *
Use appropriate indexes
Filter early
Use efficient JOINs
Check execution plan
```

---

## 72. What is Normalization?

Normalization organizes data to reduce:

* Data redundancy
* Inconsistency
* Update anomalies

Example:

```text
Bad Design

Order
Customer_Name
Customer_Email
Product
```

Instead:

```text
Customers
   ↓
Orders
   ↓
Order_Details
   ↓
Products
```

---

## 73. Explain 1NF, 2NF and 3NF

### 1NF

Each column should contain atomic values.

```text
Wrong:
Phone = 9876, 8765

Correct:
Phone = 9876
```

### 2NF

Must be in 1NF and no partial dependency on part of a composite key.

### 3NF

Must be in 2NF and non-key columns should not depend on other non-key columns.

Easy memory:

```text
1NF → Atomic values
2NF → No partial dependency
3NF → No transitive dependency
```

---

## 74. What is Denormalization?

Denormalization intentionally adds redundancy to improve read performance or simplify queries.

```text
Normalization
→ Less redundancy
→ More tables

Denormalization
→ More redundancy
→ Fewer joins / simpler reads
```

---

## 75. What is a Stored Procedure?

A Stored Procedure is a saved set of SQL statements that can be executed when needed.

Example:

```sql
CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT *
    FROM employees;
END;
```

---

## 76. What is a Trigger?

A Trigger automatically executes when a specified database event occurs.

Example:

```text
INSERT / UPDATE / DELETE
          ↓
       TRIGGER
          ↓
    Automatic action
```

---

## 77. What is a Transaction?

A transaction is a group of operations treated as one logical unit.

```sql
START TRANSACTION;

UPDATE accounts
SET balance = balance - 100
WHERE id = 1;

UPDATE accounts
SET balance = balance + 100
WHERE id = 2;

COMMIT;
```

If something fails:

```sql
ROLLBACK;
```

---

## 78. Explain ACID Properties

### A — Atomicity

All operations happen or none happen.

### C — Consistency

Database remains valid before and after the transaction.

### I — Isolation

Concurrent transactions should not incorrectly interfere with each other.

### D — Durability

Committed changes survive system failures.

```text
ACID
│
├── Atomicity
├── Consistency
├── Isolation
└── Durability
```

---

## 79. What is a Deadlock?

A deadlock occurs when two transactions wait for resources locked by each other.

```text
Transaction A
     ↓
 waits for B

Transaction B
     ↓
 waits for A

      ↕
   DEADLOCK
```

---

## 80. What is an Execution Plan?

An execution plan shows how the database intends to execute a SQL query.

In MySQL:

```sql
EXPLAIN
SELECT *
FROM employees
WHERE department_id = 10;
```

It can help identify:

* Table scans
* Index usage
* Join strategy
* Estimated rows
* Query bottlenecks

---

# 🔥 PRACTICAL SQL INTERVIEW QUESTIONS

For the following examples, assume:

```text
employees
-------------------------
employee_id
name
department_id
salary

customers
-------------------------
customer_id
name
email

orders
-------------------------
order_id
customer_id
order_date
sales

products
-------------------------
product_id
product_name
category

order_details
-------------------------
order_id
product_id
quantity
unit_price
```

---

## 81. Find the Second-Highest Salary

```sql
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

---

## 82. Find Duplicate Customers

```sql
SELECT email, COUNT(*) AS total
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
```

---

## 83. Employees With Salary Greater Than Average Salary

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

---

## 84. Highest Salary by Department

```sql
SELECT
    department_id,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;
```

---

## 85. Top 3 Salaries by Department

```sql
WITH ranked AS (
    SELECT
        employee_id,
        name,
        department_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS rnk
    FROM employees
)
SELECT *
FROM ranked
WHERE rnk <= 3;
```

---

## 86. Customers Who Placed More Than 5 Orders

```sql
SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 5;
```

---

## 87. Customers Who Never Placed an Order

```sql
SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

---

## 88. Total Sales by Month

```sql
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
```

---

## 89. Top 10 Products by Sales

```sql
SELECT
    p.product_name,
    SUM(od.quantity * od.unit_price) AS total_sales
FROM products p
JOIN order_details od
ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC
LIMIT 10;
```

---

## 90. Top 5 Customers by Revenue

```sql
SELECT
    customer_id,
    SUM(sales) AS revenue
FROM orders
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;
```

---

## 91. Calculate Average Order Value

Formula:

```text
Average Order Value
=
Total Revenue / Number of Orders
```

SQL:

```sql
SELECT
    SUM(sales) / COUNT(DISTINCT order_id) AS average_order_value
FROM orders;
```

---

## 92. Calculate Customer Retention

A common definition is:

```text
Retention %
=
Returning Customers
------------------- × 100
Eligible Customers
```

A simple cohort-style approach requires defining the retention period first.

Example concept:

```sql
-- Identify customers who purchased in both periods
SELECT COUNT(DISTINCT customer_id)
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-02-28';
```

**Interview point:** Always clarify the retention definition, cohort, and time period before writing the final query.

---

## 93. Calculate Monthly Sales Growth

```sql
WITH monthly AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(sales) AS sales
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    month,
    sales,
    LAG(sales) OVER (ORDER BY month) AS previous_sales
FROM monthly;
```

Growth formula:

```text
(Sales - Previous Sales)
------------------------ × 100
    Previous Sales
```

---

## 94. First Order of Every Customer

```sql
SELECT
    customer_id,
    MIN(order_date) AS first_order_date
FROM orders
GROUP BY customer_id;
```

---

## 95. Latest Order of Every Customer

```sql
SELECT
    customer_id,
    MAX(order_date) AS latest_order_date
FROM orders
GROUP BY customer_id;
```

---

## 96. Customers Who Purchased Product A but Not Product B

One approach:

```sql
SELECT DISTINCT customer_id
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
WHERE od.product_id = 'A'
AND customer_id NOT IN (
    SELECT o2.customer_id
    FROM orders o2
    JOIN order_details od2
    ON o2.order_id = od2.order_id
    WHERE od2.product_id = 'B'
);
```

For production SQL, `NOT EXISTS` is often preferable when NULL behavior could matter.

---

## 97. Products That Have Never Been Sold

```sql
SELECT p.*
FROM products p
LEFT JOIN order_details od
ON p.product_id = od.product_id
WHERE od.product_id IS NULL;
```

---

## 98. Percentage Contribution of Each Product to Total Sales

```sql
WITH product_sales AS (
    SELECT
        product_id,
        SUM(quantity * unit_price) AS sales
    FROM order_details
    GROUP BY product_id
)
SELECT
    product_id,
    sales,
    ROUND(
        sales / SUM(sales) OVER () * 100,
        2
    ) AS contribution_percent
FROM product_sales;
```

Concept:

```text
Product Sales
      ↓
Total Sales
      ↓
Sales / Total Sales × 100
      ↓
Contribution %
```

---

## 99. Running Total of Sales

```sql
SELECT
    order_date,
    sales,
    SUM(sales) OVER (
        ORDER BY order_date
    ) AS running_total
FROM orders;
```

Example:

```text
Date       Sales    Running Total
Jan 01      100         100
Jan 02      200         300
Jan 03      150         450
Jan 04      250         700
```

---

## 100. Highest-Selling Product in Each Category

```sql
WITH product_sales AS (
    SELECT
        p.category,
        p.product_id,
        p.product_name,
        SUM(od.quantity * od.unit_price) AS total_sales
    FROM products p
    JOIN order_details od
    ON p.product_id = od.product_id
    GROUP BY
        p.category,
        p.product_id,
        p.product_name
),
ranked AS (
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY total_sales DESC
        ) AS rnk
    FROM product_sales
)
SELECT *
FROM ranked
WHERE rnk = 1;
```

---

# ⭐ SQL INTERVIEW CHEAT SHEET

## SQL Query Execution Order

One of the **most important interview concepts**:

```text
FROM
  ↓
JOIN
  ↓
WHERE
  ↓
GROUP BY
  ↓
HAVING
  ↓
SELECT
  ↓
DISTINCT
  ↓
ORDER BY
  ↓
LIMIT
```

Example:

```sql
SELECT department, AVG(salary)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY AVG(salary) DESC
LIMIT 5;
```

---

# 🔥 JOIN DIAGRAM TO REMEMBER

```text
       TABLE A              TABLE B

      ┌───────┐            ┌───────┐
      │       │            │       │
      │   A   │████████████│   B   │
      │       │    JOIN    │       │
      └───────┘            └───────┘


INNER JOIN
       ┌───┐
       │ A │███│ B │
       └───┘███└───┘
         ↑
       MATCH


LEFT JOIN

       ┌─────────┐
       │    A    │████│ B │
       │ ALL     │████│   │
       └─────────┘    └───┘


RIGHT JOIN

       ┌───┐████┌─────────┐
       │ A │████│    B    │
       └───┘    │   ALL   │
                └─────────┘


FULL OUTER JOIN

       ┌─────────┐
       │ A █████ B │
       └─────────┘

       ALL A + ALL B
```

---

# 🧠 WINDOW FUNCTION DIAGRAM

```text
Original Data
      ↓
┌─────────────────────────┐
│ Department │ Salary     │
├─────────────────────────┤
│ IT         │ 80000      │
│ IT         │ 70000      │
│ HR         │ 9000
```
