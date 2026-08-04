# Interview Questions

## 1. What is the purpose of the ORDER BY clause?

The ORDER BY clause is used to sort the records returned by a query.

---

## 2. What is the default sorting order?

Ascending (ASC).

---

## 3. How do you sort records in descending order?

Using the DESC keyword.

Example:

```sql
SELECT *
FROM Students
ORDER BY Age DESC;
```

---

## 4. Can ORDER BY sort using multiple columns?

Yes.

Example:

```sql
SELECT *
FROM Students
ORDER BY City, Age DESC;
```

---

## 5. Which clause usually comes before ORDER BY?

The WHERE clause.
