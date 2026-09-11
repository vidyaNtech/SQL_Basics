```markdown
# Real World Trigger Examples

## Banking System

When an account balance is updated, a trigger can record the old and new balance in an audit table.

---

## E-Commerce

When an order is inserted, a trigger can record the order creation event.

---

## Student Management

When a student's marks are changed, a trigger can maintain a history of the old and new marks.

---

## Employee Management

When an employee is deleted, a trigger can preserve an audit record.

---

## Inventory System

When inventory changes, triggers can be used to maintain related information or record inventory history.

---

## Important Note

Triggers should not be used for every business rule.

They are most useful when automatic database-level behavior is genuinely required.


6. What is a BEFORE trigger?

A BEFORE trigger is designed to execute before the associated operation.

Support and behavior can vary between database systems.

7. What are triggers commonly used for?
Auditing
Maintaining history
Automatic updates
Data validation
Enforcing business rules
8. What are the disadvantages of triggers?
Increased complexity
Difficult debugging
Hidden database behavior
Possible performance overhead
9. What is the difference between a Trigger and a Stored Procedure?

A trigger executes automatically when its associated event occurs.

A stored procedure is normally called explicitly.

10. Can a trigger call another trigger?

Depending on the database system and configuration, one database operation can cause additional triggers to execute.

Developers should be careful because this can create complex chains of automatic operations.

11. Can triggers affect performance?

Yes.

Triggers execute additional SQL operations and can therefore increase the cost of INSERT, UPDATE, or DELETE operations.

12. Why should triggers be used carefully?

Triggers introduce automatic behavior that may not be obvious from the application code.

Too many triggers can make a system difficult to understand, test, and debug.
