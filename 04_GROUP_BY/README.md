# GROUP BY Clause

## What is GROUP BY?

The GROUP BY clause is used to group rows that have the same values in one or more columns.

It is commonly used with aggregate functions such as:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

Instead of calculating values for every row, GROUP BY calculates values for each group.

---

## Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

---

## Example Table: Students

| StudentID | Name   | Age | City      |
|-----------|--------|-----|-----------|
| 1 | Rahul  | 21 | Bangalore |
| 2 | Priya  | 20 | Mysore |
| 3 | Kiran  | 22 | Bangalore |
| 4 | Anjali | 19 | Shimoga |
| 5 | Rohit  | 23 | Mysore |
| 6 | Arjun  | 20 | Bangalore |

---

## Example 1

Count students in each city.

```sql
SELECT City, COUNT(*)
FROM Students
GROUP BY City;
```

### Output

| City | COUNT |
|------|------:|
| Bangalore | 3 |
| Mysore | 2 |
| Shimoga | 1 |

---

## Example 2

Average age in each city.

```sql
SELECT City, AVG(Age)
FROM Students
GROUP BY City;
```

---

## Example 3

Maximum age in each city.

```sql
SELECT City, MAX(Age)
FROM Students
GROUP BY City;
```

---

## Example 4

Minimum age in each city.

```sql
SELECT City, MIN(Age)
FROM Students
GROUP BY City;
```

---

## Example 5

Total age of students in each city.

```sql
SELECT City, SUM(Age)
FROM Students
GROUP BY City;
```

---

## Important Points

- GROUP BY groups rows having the same values.
- It is mostly used with aggregate functions.
- Every selected column that is not aggregated must appear in the GROUP BY clause.
- GROUP BY is written after WHERE and before ORDER BY.

---

## Common Mistakes

❌ Incorrect

```sql
SELECT City, Name
FROM Students
GROUP BY City;
```

Name is neither grouped nor aggregated.

✅ Correct

```sql
SELECT City, COUNT(*)
FROM Students
GROUP BY City;
```

---

## Summary

- GROUP BY creates groups.
- Used with aggregate functions.
- Useful for reports and data analysis.
