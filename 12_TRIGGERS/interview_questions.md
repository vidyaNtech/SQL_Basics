# SQL Trigger Interview Questions

## 1. What is a Trigger?

A trigger is a database object that automatically executes SQL statements when a specified event occurs.

---

## 2. What events can activate a trigger?

Common events include:

- INSERT
- UPDATE
- DELETE

---

## 3. What is NEW?

NEW represents the new row value inside a trigger.

It is commonly used with INSERT and UPDATE.

---

## 4. What is OLD?

OLD represents the previous row value.

It is commonly used with UPDATE and DELETE.

---

## 5. What is an AFTER trigger?

An AFTER trigger executes after the specified database operation has occurred.

Example:

```sql
CREATE TRIGGER example
AFTER INSERT ON Students
BEGIN
    ...
END;
