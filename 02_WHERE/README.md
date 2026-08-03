# WHERE Clause

## What is the WHERE Clause?

The WHERE clause is used to filter records from a table. It returns only the rows that satisfy the specified condition.

Without the WHERE clause, SQL returns all rows from the table.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
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

## Comparison Operators

| Operator | Description |
|----------|-------------|
| = | Equal to |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |
| <> or != | Not equal to |

---

## Examples

### Display students older than 20

```sql
SELECT *
FROM Students
WHERE Age > 20;
```

---

### Display students from Bangalore

```sql
SELECT *
FROM Students
WHERE City = 'Bangalore';
```

---

### Display students whose age is less than or equal to 21

```sql
SELECT Name, Age
FROM Students
WHERE Age <= 21;
```

---

## Important Points

- WHERE filters rows.
- Conditions are evaluated for every row.
- Text values must be enclosed in single quotes (' ').
- Numeric values do not require quotes.

---

## Common Mistakes

❌ Incorrect

```sql
SELECT *
FROM Students
WHERE City = Bangalore;
```

✅ Correct

```sql
SELECT *
FROM Students
WHERE City = 'Bangalore';
```

---

## Interview Questions

### What is the purpose of the WHERE clause?

The WHERE clause is used to filter records based on a specified condition.

---

### Can WHERE be used without SELECT?

No. WHERE is generally used with SELECT, UPDATE, and DELETE statements.

---

## Summary

- WHERE filters rows.
- Supports comparison operators.
- Works with numeric and string values.
- Makes query results more specific.
