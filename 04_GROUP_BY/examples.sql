-- Count students in each city

SELECT City, COUNT(*)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Average age in each city

SELECT City, AVG(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Maximum age in each city

SELECT City, MAX(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Minimum age in each city

SELECT City, MIN(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Total age in each city

SELECT City, SUM(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Count students by age

SELECT Age, COUNT(*)
FROM Students
GROUP BY Age;
