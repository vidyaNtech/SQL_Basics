# ORDER BY Clause

## What is ORDER BY?

The ORDER BY clause is used to sort the records returned by a query. By default, the sorting is done in ascending (ASC) order. To sort in descending order, use the DESC keyword.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name [ASC | DESC];
```

---

## Example Table: Students

| StudentID | Name   | Age | City      |
|-----------|--------|-----|-----------|
| 1         | Rahul  | 21  | Bangalore |
| 2         | Priya  | 20  | Mysore    |
| 3         | Kiran  | 22  | Mangalore |
| 4         | Anjali | 19  | Shimoga   |
| 5         | Rohit  | 23  | Hubli     |

---

## Ascending Order (Default)

```sql
SELECT *
FROM Students
ORDER BY Age;
```

or

```sql
SELECT *
FROM Students
ORDER BY Age ASC;
```

---

## Descending Order

```sql
SELECT *
FROM Students
ORDER BY Age DESC;
```

---

## Sort by Name

```sql
SELECT *
FROM Students
ORDER BY Name;
```

---

## Sort by Multiple Columns

```sql
SELECT *
FROM Students
ORDER BY City ASC, Age DESC;
```

The data is first sorted by City. If two or more rows have the same City, then they are sorted by Age in descending order.

---

## Important Points

- ORDER BY sorts the result set.
- ASC means ascending order (default).
- DESC means descending order.
- Multiple columns can be used for sorting.
- ORDER BY is usually written after WHERE.

---

## Common Mistakes

❌ Incorrect

```sql
ORDER Age BY;
```

✅ Correct

```sql
ORDER BY Age;
```

---

## Summary

- Used for sorting records.
- Default sorting is ASC.
- DESC sorts from highest to lowest or Z to A.
- Supports sorting using multiple columns.
