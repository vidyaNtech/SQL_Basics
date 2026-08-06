# Interview Questions

## 1. What is the HAVING clause?

HAVING is used to filter grouped data after the GROUP BY clause.

---

## 2. What is the difference between WHERE and HAVING?

- WHERE filters rows before grouping.
- HAVING filters groups after grouping.

---

## 3. Can HAVING be used without GROUP BY?

Yes. HAVING can be used without GROUP BY when aggregate functions are applied to the entire result set, though it is most commonly used with GROUP BY.

---

## 4. Which clause executes first: WHERE or HAVING?

WHERE executes before GROUP BY.

HAVING executes after GROUP BY.

---

## 5. Which aggregate functions are commonly used with HAVING?

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 6. Can aggregate functions be used in the WHERE clause?

No. Aggregate functions cannot be used directly in the WHERE clause because WHERE filters rows before aggregation.
