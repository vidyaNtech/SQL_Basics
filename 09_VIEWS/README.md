# SQL Views

## What is a View?

A View is a virtual table created from the result of a SQL query.

A view does not normally store the actual data separately. Instead, it stores the SQL query used to retrieve the data.

When we query a view, the database retrieves the data based on the underlying query.

---

## Syntax

### Creating a View

```sql
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
```

---

## Example Tables

### Students

| StudentID | Name   | Age | City      | Marks |
|-----------|--------|-----|-----------|-------|
| 1 | Rahul  | 21 | Bangalore | 85 |
| 2 | Priya  | 20 | Mysore    | 75 |
| 3 | Kiran  | 22 | Bangalore | 90 |
| 4 | Anjali | 19 | Shimoga   | 70 |
| 5 | Rohit  | 23 | Mysore    | 95 |

---

# Creating a Simple View

Create a view containing student names and marks.

```sql
CREATE VIEW StudentMarks AS
SELECT Name, Marks
FROM Students;
```

Now we can query the view like a table:

```sql
SELECT *
FROM StudentMarks;
```

---

# Creating a View with WHERE

Create a view containing students who scored more than 80.

```sql
CREATE VIEW HighScorers AS
SELECT Name, Marks
FROM Students
WHERE Marks > 80;
```

Query the view:

```sql
SELECT *
FROM HighScorers;
```

---

# Creating a View Using Multiple Columns

```sql
CREATE VIEW StudentDetails AS
SELECT StudentID, Name, City, Marks
FROM Students;
```

---

# Creating a View Using JOIN

Views can also be created using multiple tables.

```sql
CREATE VIEW StudentDepartments AS
SELECT Students.Name,
       Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
```

Then:

```sql
SELECT *
FROM StudentDepartments;
```

---

# Updating a View

The definition of an existing view can be changed using `CREATE OR REPLACE VIEW` in database systems that support it.

```sql
CREATE OR REPLACE VIEW HighScorers AS
SELECT Name, City, Marks
FROM Students
WHERE Marks > 80;
```

> Syntax for modifying views can differ between database systems.

---

# Dropping a View

To remove a view:

```sql
DROP VIEW StudentMarks;
```

The underlying table is not deleted.

---

# Advantages of Views

## 1. Simplifies Complex Queries

A complex query can be stored as a view and reused.

## 2. Improves Security

A view can expose only selected columns instead of giving users access to the complete table.

## 3. Reusability

The same query can be reused multiple times.

## 4. Provides Data Abstraction

Users can work with the view without needing to understand the complete underlying database structure.

---

# Limitations of Views

- A view depends on its underlying tables.
- Changes to underlying tables can affect the view.
- Some views cannot be directly updated.
- Complex views can have performance considerations.

---

# View vs Table

| View | Table |
|------|-------|
| Virtual representation of data | Stores data |
| Usually stores a query definition | Stores actual rows |
| Can be created from one or more tables | Physical database object |
| Does not normally store a separate copy of the data | Stores the data |

---

# Important Points

- A view is a virtual table.
- Views are created using CREATE VIEW.
- Views can be queried using SELECT.
- Views can be removed using DROP VIEW.
- Views can be created using JOINs, WHERE, GROUP BY, and other SQL clauses.

---

# Summary

Views provide a convenient way to save and reuse SQL queries.

They are useful for:

- Security
- Simplicity
- Reusability
- Data abstraction
