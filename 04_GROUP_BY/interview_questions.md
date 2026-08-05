# Interview Questions

## 1. What is the purpose of the GROUP BY clause?

The GROUP BY clause groups rows that have the same values in one or more columns and is commonly used with aggregate functions.

---

## 2. Which aggregate functions are commonly used with GROUP BY?

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 3. Can GROUP BY be used without an aggregate function?

Yes, but its primary purpose is to group duplicate values. It is most useful when combined with aggregate functions.

---

## 4. Which clause comes before GROUP BY?

The WHERE clause.

Order of execution:

FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

---

## 5. What is the difference between WHERE and GROUP BY?

- WHERE filters rows before grouping.
- GROUP BY groups the filtered rows.

---

## 6. What is the difference between GROUP BY and ORDER BY?

- GROUP BY creates groups.
- ORDER BY sorts the result.
