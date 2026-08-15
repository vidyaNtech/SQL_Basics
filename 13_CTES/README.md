# SQL Common Table Expressions (CTEs)

## What is a CTE?

CTE stands for **Common Table Expression**.

A CTE is a temporary named result set that can be used within a single SQL statement.

CTEs are mainly used to make complex SQL queries easier to read, understand, and maintain.

---

## Basic Syntax

```sql
WITH cte_name AS (
    SELECT column1, column2
    FROM table_name
    WHERE condition
)
SELECT *
FROM cte_name;
```

The `WITH` keyword is used to define a CTE.

---

## Simple CTE

Suppose we have a `Students` table.

We can use a CTE to find students who scored more than 80.

```sql
WITH HighScorers AS (
    SELECT Name, Marks
    FROM Students
    WHERE Marks > 80
)
SELECT *
FROM HighScorers;
```

Here:

1. The CTE creates a temporary result called `HighScorers`.
2. The main query retrieves data from that result.

---

## CTE with Aggregate Functions

A CTE can contain aggregate functions such as:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`

Example:

```sql
WITH AverageMarks AS (
    SELECT AVG(Marks) AS Average_Marks
    FROM Students
)
SELECT *
FROM AverageMarks;
```

---

## CTE with GROUP BY

A CTE can also be used with `GROUP BY`.

```sql
WITH CityCounts AS (
    SELECT City, COUNT(*) AS StudentCount
    FROM Students
    GROUP BY City
)
SELECT *
FROM CityCounts;
```

This first calculates the number of students in each city and then retrieves the result.

---

## CTE with HAVING

```sql
WITH CityAverages AS (
    SELECT City, AVG(Marks) AS AverageMarks
    FROM Students
    GROUP BY City
    HAVING AVG(Marks) > 80
)
SELECT *
FROM CityAverages;
```

---

## CTE with JOIN

CTEs can also be combined with joins.

```sql
WITH StudentDetails AS (
    SELECT
        Students.Name,
        Departments.DepartmentName
    FROM Students
    JOIN Departments
        ON Students.DepartmentID = Departments.DepartmentID
)
SELECT *
FROM StudentDetails;
```

---

## Multiple CTEs

Multiple CTEs can be defined in the same SQL statement.

```sql
WITH CityCounts AS (
    SELECT City, COUNT(*) AS StudentCount
    FROM Students
    GROUP BY City
),
LargeCities AS (
    SELECT City, StudentCount
    FROM CityCounts
    WHERE StudentCount > 5
)
SELECT *
FROM LargeCities;
```

The second CTE can use the result of the first CTE.

---

## CTE vs Subquery

### Using a Subquery

```sql
SELECT Name, Marks
FROM Students
WHERE Marks > (
    SELECT AVG(Marks)
    FROM Students
);
```

### Using a CTE

```sql
WITH AverageMarks AS (
    SELECT AVG(Marks) AS AverageMarks
    FROM Students
)
SELECT Name, Marks
FROM Students
WHERE Marks > (
    SELECT AverageMarks
    FROM AverageMarks
);
```

Both approaches can solve similar problems.

CTEs are often easier to understand when the query contains multiple logical steps.

---

## Recursive CTE

A recursive CTE is a CTE that refers to itself.

It can be useful for hierarchical or recursive data.

Example:

```sql
WITH RECURSIVE Numbers AS (
    SELECT 1 AS Number

    UNION ALL

    SELECT Number + 1
    FROM Numbers
    WHERE Number < 5
)
SELECT *
FROM Numbers;
```

Result:

```text
1
2
3
4
5
```

---

## Advantages of CTEs

- Improve query readability.
- Break complex queries into logical steps.
- Make queries easier to maintain.
- Can be used with joins and aggregate functions.
- Multiple CTEs can be combined.
- Recursive CTEs can handle hierarchical data.

---

## Important Points

- CTEs are created using the `WITH` keyword.
- A CTE exists only for the duration of the SQL statement.
- A CTE is not a permanent table.
- Multiple CTEs can be defined in one statement.
- CTEs can contain `SELECT`, `JOIN`, `GROUP BY`, `HAVING`, and aggregate operations.
- Recursive CTEs can reference themselves.

---

## Summary

A **Common Table Expression (CTE)** is a temporary named result set used within a SQL statement.

Basic structure:

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT ...
FROM cte_name;
```

CTEs are especially useful when a SQL query needs to be divided into multiple logical steps.