# SQL Constraints

## What are Constraints?

Constraints are rules applied to columns in a database table to control the type of data that can be stored.

They help maintain data accuracy, validity, and integrity.

---

## Types of Constraints

The commonly used SQL constraints are:

1. PRIMARY KEY
2. FOREIGN KEY
3. UNIQUE
4. NOT NULL
5. CHECK
6. DEFAULT

---

# 1. PRIMARY KEY

A PRIMARY KEY uniquely identifies each row in a table.

A primary key:

- Must contain unique values.
- Cannot contain NULL values.
- A table can have only one primary key constraint, although it can contain multiple columns.

### Example

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER
);
```

Here, StudentID uniquely identifies each student.

---

# 2. FOREIGN KEY

A FOREIGN KEY creates a relationship between two tables.

It references a key in another table.

### Example

```sql
CREATE TABLE Departments (
    DepartmentID INTEGER PRIMARY KEY,
    DepartmentName TEXT
);

CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    DepartmentID INTEGER,
    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);
```

DepartmentID in Students refers to DepartmentID in Departments.

---

# 3. UNIQUE

The UNIQUE constraint prevents duplicate values in a column.

### Example

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Email TEXT UNIQUE
);
```

Two students cannot have the same email address.

---

# 4. NOT NULL

NOT NULL ensures that a column cannot contain NULL values.

### Example

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);
```

Every student must have a Name.

---

# 5. CHECK

CHECK ensures that values satisfy a specified condition.

### Example

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER CHECK (Age >= 18)
);
```

The database will reject an age below 18.

---

# 6. DEFAULT

DEFAULT provides a value automatically when no value is supplied.

### Example

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT DEFAULT 'Bangalore'
);
```

If City is not provided, Bangalore will be used.

---

# Combining Multiple Constraints

Multiple constraints can be applied to the same table.

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT UNIQUE,
    Age INTEGER CHECK (Age >= 18),
    City TEXT DEFAULT 'Bangalore',
    DepartmentID INTEGER,
    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);
```

---

# PRIMARY KEY vs UNIQUE

| PRIMARY KEY | UNIQUE |
|-------------|--------|
| Uniquely identifies rows | Prevents duplicate values |
| Cannot contain NULL | NULL handling depends on database |
| One primary key constraint per table | Multiple UNIQUE constraints can exist |
| Used as the main row identifier | Used to enforce uniqueness |

---

# PRIMARY KEY vs FOREIGN KEY

| PRIMARY KEY | FOREIGN KEY |
|-------------|-------------|
| Identifies a row | Creates a relationship |
| Must be unique | Can contain duplicate values |
| Cannot be NULL | NULL may be allowed unless restricted |
| Usually one primary key constraint per table | A table can have multiple foreign keys |

---

# Why are Constraints Important?

Constraints help:

- Prevent invalid data.
- Prevent duplicate data.
- Maintain relationships between tables.
- Improve data integrity.
- Enforce business rules.

---

# Summary

Constraints are rules that control the data stored in database tables.

Important constraints:

PRIMARY KEY  
FOREIGN KEY  
UNIQUE  
NOT NULL  
CHECK  
DEFAULT
