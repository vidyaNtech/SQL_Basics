# SQL Indexes

## What is an Index?

An index is a database object used to improve the speed of data retrieval from a table.

An index works similar to an index in a book. Instead of searching through every page, we can use the index to quickly find the required information.

---

## Why are Indexes Used?

Consider a table containing millions of records.

Without an index, the database may need to scan many rows to find the required data.

An index can help the database locate the required rows more efficiently.

---

## Basic Syntax

```sql
CREATE INDEX index_name
ON table_name (column_name);
```

---

## Example Table

### Students

| StudentID | Name | Age | City | Marks |
|-----------|------|-----|------|-------|
| 1 | Rahul | 21 | Bangalore | 85 |
| 2 | Priya | 20 | Mysore | 75 |
| 3 | Kiran | 22 | Bangalore | 90 |
| 4 | Anjali | 19 | Shimoga | 70 |
| 5 | Rohit | 23 | Mysore | 95 |

---

# Creating an Index

Create an index on the City column.

```sql
CREATE INDEX idx_students_city
ON Students (City);
```

The index can help queries that frequently search or filter using City.

Example:

```sql
SELECT *
FROM Students
WHERE City = 'Bangalore';
```

---

# Index on Multiple Columns

An index can be created using more than one column.

```sql
CREATE INDEX idx_students_city_age
ON Students (City, Age);
```

This is called a composite index.

---

# Unique Index

A unique index prevents duplicate values in the indexed column.

```sql
CREATE UNIQUE INDEX idx_students_name
ON Students (Name);
```

However, whether duplicate NULL values are allowed depends on the database system.

---

# Dropping an Index

To remove an index, the syntax depends on the database system.

For example, in SQLite:

```sql
DROP INDEX idx_students_city;
```

---

# Primary Keys and Indexes

A primary key is commonly backed by an index or an index-like structure by the database system.

Example:

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER
);
```

The exact implementation depends on the database system.

---

# Advantages of Indexes

## 1. Faster Data Retrieval

Indexes can make searches and filtering faster.

## 2. Faster Sorting

Indexes can sometimes help queries involving ORDER BY.

## 3. Faster Searching

Indexes are useful for frequently searched columns.

---

# Disadvantages of Indexes

## 1. Extra Storage

Indexes require additional storage.

## 2. Slower INSERT Operations

When new rows are inserted, indexes may also need to be updated.

## 3. Slower UPDATE Operations

Updating indexed columns can require index maintenance.

## 4. Slower DELETE Operations

Deleting rows may also require the corresponding index entries to be removed.

---

# When Should You Use an Index?

Indexes are useful for columns that are frequently used in:

- WHERE
- JOIN
- ORDER BY
- GROUP BY

Indexes are especially useful when the table contains a large number of rows and the column is frequently searched.

---

# When Should You Avoid Unnecessary Indexes?

Avoid creating indexes on every column.

Indexes have a maintenance cost and consume storage.

For very small tables, an index may provide little benefit.

---

# Composite Index

A composite index contains multiple columns.

Example:

```sql
CREATE INDEX idx_city_age
ON Students (City, Age);
```

The order of columns in a composite index matters.

---

# Important Concept: Selectivity

Selectivity describes how well a column distinguishes between different rows.

A column with many different values often provides better filtering than a column with very few different values.

For example:

- StudentID → usually high selectivity
- Gender → usually low selectivity

The usefulness of an index depends on the database, data distribution, query patterns, and execution plan.

---

# Index and Query Performance

An index does not automatically make every query faster.

The database optimizer decides whether using an index is beneficial.

The best way to check query performance is to examine the query execution plan.

---

# Summary

An index is used to improve data retrieval performance.

Important points:

- Indexes can speed up SELECT queries.
- Indexes require additional storage.
- INSERT, UPDATE, and DELETE operations may become more expensive.
- Composite indexes contain multiple columns.
- Avoid unnecessary indexes.
- Query execution plans help determine whether an index is useful.
