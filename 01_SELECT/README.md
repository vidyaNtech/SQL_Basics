# SELECT Statement

## What is SELECT?

The SELECT statement is used to retrieve data from one or more columns of a table.

It is the most commonly used SQL command.

---

## Syntax

```sql
SELECT column_name
FROM table_name;
```

---

## Select All Columns

```sql
SELECT * FROM Students;
```

---

## Select Specific Columns

```sql
SELECT Name, Age
FROM Students;
```

---

## Example Table

| ID | Name | Age | City |
|----|------|-----|------|
| 1 | Rahul | 21 | Bangalore |
| 2 | Priya | 20 | Mysore |
| 3 | Kiran | 22 | Mangalore |

---

## Example 1

```sql
SELECT Name
FROM Students;
```

### Output

| Name |
|------|
| Rahul |
| Priya |
| Kiran |

---

## Example 2

```sql
SELECT Name, City
FROM Students;
```

### Output

| Name | City |
|------|------|
| Rahul | Bangalore |
| Priya | Mysore |
| Kiran | Mangalore |

---

## Important Points

- SELECT retrieves data.
- FROM specifies the table.
- * selects every column.
- Multiple columns are separated using commas.

---

## Interview Questions

### What does SELECT do?

SELECT retrieves data from a table.

---

### Difference between

```sql
SELECT *
```

and

```sql
SELECT Name, Age
```

Answer:

- SELECT * returns all columns.
- SELECT Name, Age returns only the specified columns.

---

## Practice

Write SQL queries to:

1. Display all columns.
2. Display only Name.
3. Display Name and Age.
4. Display City.
