# SQL JOINS

## What is a JOIN?

A JOIN is used to combine rows from two or more tables based on a related column.

It allows us to retrieve data that is stored in multiple tables.

---

## Types of SQL JOIN

1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN
5. CROSS JOIN
6. SELF JOIN

---

## Example Tables

### Students

| StudentID | Name | DepartmentID |
|-----------|------|--------------|
| 1 | Rahul | 101 |
| 2 | Priya | 102 |
| 3 | Kiran | 101 |
| 4 | Anjali | 103 |

---

### Departments

| DepartmentID | DepartmentName |
|--------------|----------------|
| 101 | Computer Science |
| 102 | Information Science |
| 103 | Electronics |
| 104 | Mechanical |

---

# INNER JOIN

Returns only matching records from both tables.

### Syntax

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

### Example

```sql
SELECT Students.Name, Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
```

---

# LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

If there is no match, NULL values are returned.

```sql
SELECT Students.Name, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
```

---

# RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

```sql
SELECT Students.Name, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
```

---

# FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

```sql
SELECT Students.Name, Departments.DepartmentName
FROM Students
FULL OUTER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
```

> Note: MySQL does not directly support FULL OUTER JOIN.

---

# CROSS JOIN

Returns the Cartesian product of both tables.

```sql
SELECT *
FROM Students
CROSS JOIN Departments;
```

---

# SELF JOIN

A table is joined with itself.

```sql
SELECT A.Name, B.Name
FROM Employees A
JOIN Employees B
ON A.ManagerID = B.EmployeeID;
```

---

## Important Points

- JOIN combines data from multiple tables.
- INNER JOIN returns only matching rows.
- LEFT JOIN returns all rows from the left table.
- RIGHT JOIN returns all rows from the right table.
- FULL OUTER JOIN returns all rows from both tables.
- CROSS JOIN creates every possible combination.
- SELF JOIN joins a table with itself.

---

## Summary

SQL JOIN is used to retrieve related data from multiple tables.
