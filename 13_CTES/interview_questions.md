# SQL CTE Interview Questions

## 1. What is a CTE?

CTE stands for **Common Table Expression**.

It is a temporary named result set that can be referenced within a single SQL statement.

---

## 2. Which keyword is used to create a CTE?

The `WITH` keyword.

Example:

```sql
WITH HighScorers AS (
    SELECT *
    FROM Students
    WHERE Marks > 80
)
SELECT *
FROM HighScorers;