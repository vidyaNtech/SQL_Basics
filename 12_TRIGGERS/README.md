# SQL Triggers

## What is a Trigger?

A trigger is a database object that automatically executes a predefined SQL statement when a specified event occurs on a table.

Triggers are commonly used to automatically perform actions when data is inserted, updated, or deleted.

---

## Trigger Events

A trigger can be associated with events such as:

- INSERT
- UPDATE
- DELETE

---

## Basic Syntax

```sql
CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
BEGIN
    -- SQL statements
END;
```

---

# Types of Trigger Timing

Triggers can execute:

- BEFORE an operation
- AFTER an operation

SQLite supports BEFORE, AFTER, and INSTEAD OF triggers, with important restrictions depending on the operation and object involved.

---

# Example Tables

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Marks INTEGER
);
```

---

# AFTER INSERT Trigger

Suppose we want to automatically record whenever a new student is added.

Create an audit table:

```sql
CREATE TABLE Student_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Action TEXT
);
```

Create the trigger:

```sql
CREATE TRIGGER after_student_insert
AFTER INSERT ON Students
BEGIN
    INSERT INTO Student_Audit(StudentID, Action)
    VALUES (NEW.StudentID, 'Student Added');
END;
```

Now insert a student:

```sql
INSERT INTO Students(StudentID, Name, Marks)
VALUES (1, 'Rahul', 85);
```

The trigger automatically inserts a record into Student_Audit.

---

# NEW and OLD

Triggers can use special references to access row values.

## NEW

NEW refers to the new row value.

It is commonly used with:

- INSERT
- UPDATE

Example:

```sql
NEW.StudentID
NEW.Name
NEW.Marks
```

---

## OLD

OLD refers to the previous row value.

It is commonly used with:

- UPDATE
- DELETE

Example:

```sql
OLD.StudentID
OLD.Name
OLD.Marks
```

---

# AFTER UPDATE Trigger

Suppose we want to record when a student's marks change.

```sql
CREATE TABLE Marks_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    OldMarks INTEGER,
    NewMarks INTEGER
);
```

Trigger:

```sql
CREATE TRIGGER after_marks_update
AFTER UPDATE OF Marks ON Students
BEGIN
    INSERT INTO Marks_Audit(StudentID, OldMarks, NewMarks)
    VALUES (
        OLD.StudentID,
        OLD.Marks,
        NEW.Marks
    );
END;
```

Now:

```sql
UPDATE Students
SET Marks = 90
WHERE StudentID = 1;
```

The trigger automatically records the old and new marks.

---

# AFTER DELETE Trigger

We can record deleted students.

```sql
CREATE TABLE Deleted_Students (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Name TEXT
);
```

Trigger:

```sql
CREATE TRIGGER after_student_delete
AFTER DELETE ON Students
BEGIN
    INSERT INTO Deleted_Students(StudentID, Name)
    VALUES (OLD.StudentID, OLD.Name);
END;
```

When a student is deleted, the trigger stores information about the deleted row.

---

# Dropping a Trigger

A trigger can be removed using:

```sql
DROP TRIGGER trigger_name;
```

Example:

```sql
DROP TRIGGER after_student_insert;
```

---

# Why are Triggers Used?

Triggers are useful for:

- Audit logging
- Maintaining history
- Automatically updating related data
- Enforcing certain business rules
- Tracking INSERT, UPDATE, and DELETE operations

---

# Advantages of Triggers

1. Automatic execution
2. Useful for auditing
3. Helps maintain data consistency
4. Can automate database operations
5. Keeps certain database rules close to the data

---

# Disadvantages of Triggers

1. They can make database behavior harder to understand.
2. Debugging can become difficult.
3. Too many triggers can increase complexity.
4. Triggers can affect write performance.
5. Hidden automatic operations may surprise developers.

---

# Trigger vs Stored Procedure

| Trigger | Stored Procedure |
|---------|------------------|
| Automatically executes when an event occurs | Usually executed explicitly |
| Associated with a table/view event | Called by an application or SQL statement |
| Commonly used for auditing and automatic actions | Commonly used for reusable database operations |

---

# Important Points

- Triggers execute automatically.
- INSERT, UPDATE, and DELETE are common trigger events.
- NEW represents the new row value.
- OLD represents the previous row value.
- Triggers can be used for auditing.
- Triggers should be used carefully because they add hidden behavior.

---

# Summary

A trigger automatically executes SQL statements when a specified database event occurs.

The general structure is:

```sql
CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
BEGIN
    -- SQL statements
END;
```
