-- Question 1

SELECT City, COUNT(*)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 2

SELECT City, AVG(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 3

SELECT City, MAX(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 4

SELECT City, MIN(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 5

SELECT City, SUM(Age)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 6

SELECT Age, COUNT(*)
FROM Students
GROUP BY Age;

-------------------------------------------------

-- Question 7

SELECT Age, AVG(Age)
FROM Students
GROUP BY Age;

-------------------------------------------------

-- Question 8

SELECT City, COUNT(*)
FROM Students
WHERE City IN ('Bangalore', 'Mysore')
GROUP BY City;

-------------------------------------------------

-- Question 9

SELECT City, MAX(StudentID)
FROM Students
GROUP BY City;

-------------------------------------------------

-- Question 10

SELECT City, MIN(StudentID)
FROM Students
GROUP BY City;
