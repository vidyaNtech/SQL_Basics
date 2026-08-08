# SQL Subqueries

## What is a Subquery?

A subquery (also called an inner query or nested query) is a query written inside another SQL query.

The inner query executes first, and its result is used by the outer query.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
);
```

---

## Example Table: Students

| StudentID | Name | Age | City | Marks |
|-----------|------|-----|------|-------|
| 1 | Rahul | 21 | Bangalore | 85 |
| 2 | Priya | 20 | Mysore | 75 |
| 3 | Kiran | 22 | Bangalore | 90 |
| 4 | Anjali | 19 | Shimoga | 70 |
| 5 | Rohit | 23 | Mysore | 95 |

---

## Example 1

Display students whose marks are greater than the average marks.

```sql
SELECT Name, Marks
FROM Students
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Students
);
```

---

## Example 2

Display students whose age is equal to the maximum age.

```sql
SELECT *
FROM Students
WHERE Age =
(
    SELECT MAX(Age)
    FROM Students
);
```

---

## Example 3

Display students whose marks are less than the highest marks.

```sql
SELECT *
FROM Students
WHERE Marks <
(
    SELECT MAX(Marks)
    FROM Students
);
```

---

## Types of Subqueries

1. Single-row subquery
2. Multiple-row subquery
3. Correlated subquery

---

## Important Points

- The inner query executes first.
- The outer query uses the result of the inner query.
- Subqueries can be used with SELECT, INSERT, UPDATE, and DELETE.
- They are commonly used with WHERE and HAVING clauses.

---

## Summary

- A subquery is a query inside another query.
- It helps solve complex SQL problems.
- Frequently used with aggregate functions.
