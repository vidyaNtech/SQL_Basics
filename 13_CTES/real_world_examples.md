# Real-World Applications of CTEs

CTEs are useful when real-world SQL queries need to be divided into multiple logical steps.

---

## 1. E-Commerce System

Suppose an online store wants to find customers whose total spending is greater than ₹50,000.

A CTE can first calculate the total amount spent by each customer.

```sql
WITH CustomerSpending AS (
    SELECT
        customer_id,
        SUM(order_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM CustomerSpending
WHERE total_spending > 50000;