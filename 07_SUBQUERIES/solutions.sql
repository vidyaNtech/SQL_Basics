-- Question 1

SELECT Name, Marks
FROM Students
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Students
);

-------------------------------------------------

-- Question 2

SELECT *
FROM Students
WHERE Age =
(
    SELECT MAX(Age)
    FROM Students
);

-------------------------------------------------

-- Question 3

SELECT *
FROM Students
WHERE Marks <
(
    SELECT MAX(Marks)
    FROM Students
);

-------------------------------------------------

-- Question 4

SELECT *
FROM Students
WHERE Age >
(
    SELECT AVG(Age)
    FROM Students
);

-------------------------------------------------

-- Question 5

SELECT *
FROM Students
WHERE City =
(
    SELECT City
    FROM Students
    WHERE Name = 'Rahul'
);

-------------------------------------------------

-- Question 6

SELECT *
FROM Students
WHERE Marks =
(
    SELECT MIN(Marks)
    FROM Students
);

-------------------------------------------------

-- Question 7

SELECT *
FROM Students
WHERE Age <
(
    SELECT AVG(Age)
    FROM Students
);

-------------------------------------------------

-- Question 8

SELECT *
FROM Students
WHERE Marks >
(
    SELECT Marks
    FROM Students
    WHERE Name = 'Priya'
);

-------------------------------------------------

-- Question 9

SELECT *
FROM Students
WHERE City =
(
    SELECT City
    FROM Students
    WHERE Name = 'Rohit'
);

-------------------------------------------------

-- Question 10

SELECT *
FROM Students
WHERE Age <
(
    SELECT MAX(Age)
    FROM Students
);
