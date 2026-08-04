-- Display all students sorted by Age (Ascending)

SELECT *
FROM Students
ORDER BY Age;

-------------------------------------------------

-- Display all students sorted by Age (Descending)

SELECT *
FROM Students
ORDER BY Age DESC;

-------------------------------------------------

-- Display students sorted by Name

SELECT *
FROM Students
ORDER BY Name;

-------------------------------------------------

-- Display Name and City sorted by City

SELECT Name, City
FROM Students
ORDER BY City;

-------------------------------------------------

-- Sort using multiple columns

SELECT *
FROM Students
ORDER BY City ASC, Age DESC;
