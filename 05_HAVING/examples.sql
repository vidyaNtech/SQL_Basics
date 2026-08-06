-- Cities having more than 2 students

SELECT City, COUNT(*)
FROM Students
GROUP BY City
HAVING COUNT(*) > 2;

-------------------------------------------------

-- Cities having average age greater than 20

SELECT City, AVG(Age)
FROM Students
GROUP BY City
HAVING AVG(Age) > 20;

-------------------------------------------------

-- Cities having maximum age greater than 22

SELECT City, MAX(Age)
FROM Students
GROUP BY City
HAVING MAX(Age) > 22;

-------------------------------------------------

-- Cities having minimum age less than 20

SELECT City, MIN(Age)
FROM Students
GROUP BY City
HAVING MIN(Age) < 20;

-------------------------------------------------

-- Cities having total age greater than 40

SELECT City, SUM(Age)
FROM Students
GROUP BY City
HAVING SUM(Age) > 40;
