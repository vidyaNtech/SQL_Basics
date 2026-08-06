-- Question 1

SELECT City, COUNT(*)
FROM Students
GROUP BY City
HAVING COUNT(*) > 2;

-------------------------------------------------

-- Question 2

SELECT City, AVG(Age)
FROM Students
GROUP BY City
HAVING AVG(Age) > 20;

-------------------------------------------------

-- Question 3

SELECT City, MAX(Age)
FROM Students
GROUP BY City
HAVING MAX(Age) > 22;

-------------------------------------------------

-- Question 4

SELECT City, MIN(Age)
FROM Students
GROUP BY City
HAVING MIN(Age) < 20;

-------------------------------------------------

-- Question 5

SELECT City, SUM(Age)
FROM Students
GROUP BY City
HAVING SUM(Age) > 40;

-------------------------------------------------

-- Question 6

SELECT Age, COUNT(*)
FROM Students
GROUP BY Age
HAVING COUNT(*) > 1;

-------------------------------------------------

-- Question 7

SELECT City, COUNT(*)
FROM Students
GROUP BY City
HAVING COUNT(*) = 2;

-------------------------------------------------

-- Question 8

SELECT City, AVG(Age)
FROM Students
GROUP BY City
HAVING AVG(Age) < 22;

-------------------------------------------------

-- Question 9

SELECT City, SUM(Age)
FROM Students
GROUP BY City
HAVING SUM(Age) > 60;

-------------------------------------------------

-- Question 10

SELECT City, MAX(StudentID)
FROM Students
GROUP BY City
HAVING MAX(StudentID) > 4;
