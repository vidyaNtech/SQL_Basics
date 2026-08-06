# HAVING Clause

## What is HAVING?

The HAVING clause is used to filter grouped data after the GROUP BY clause.

Unlike the WHERE clause, which filters individual rows before grouping, HAVING filters groups after aggregate functions have been applied.

---

## Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## Example Table: Students

| StudentID | Name | Age | City |
|-----------|------|-----|------|
| 1 | Rahul | 21 | Bangalore |
| 2 | Priya | 20 | Mysore |
| 3 | Kiran | 22 | Bangalore |
| 4 | Anjali | 19 | Shimoga |
| 5 | Rohit | 23 | Mysore |
| 6 | Arjun | 20 | Bangalore |

---

## Example 1

Display cities having more than 2 students.

```sql
SELECT City, COUNT(*)
FROM Students
GROUP BY City
HAVING COUNT(*) > 2;
```

### Output

| City | COUNT |
|------|------:|
| Bangalore | 3 |

---

## Example 2

Display cities where the average age is greater than 20.

```sql
SELECT City, AVG(Age)
FROM Students
GROUP BY City
HAVING AVG(Age) > 20;
```

---

## Example 3

Display cities where the maximum age is greater than 22.

```sql
SELECT City, MAX(Age)
FROM Students
GROUP BY City
HAVING MAX(Age) > 22;
```

---

## Important Points

- HAVING filters groups.
- Used after GROUP BY.
- Mostly used with aggregate functions.
- WHERE filters rows, HAVING filters groups.

---

## Difference Between WHERE and HAVING

| WHERE | HAVING |
|--------|---------|
| Filters rows | Filters groups |
| Before GROUP BY | After GROUP BY |
| Cannot use aggregate functions directly | Can use aggregate functions |

---

## Summary

- HAVING works after GROUP BY.
- Filters grouped results.
- Commonly used with COUNT(), SUM(), AVG(), MAX(), and MIN().
