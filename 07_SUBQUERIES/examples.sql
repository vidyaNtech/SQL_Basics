-- Students scoring above average

SELECT Name, Marks
FROM Students
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Students
);

-------------------------------------------------

-- Student with maximum age

SELECT *
FROM Students
WHERE Age =
(
    SELECT MAX(Age)
    FROM Students
);

-------------------------------------------------

-- Students below highest marks

SELECT *
FROM Students
WHERE Marks <
(
    SELECT MAX(Marks)
    FROM Students
);

-------------------------------------------------

-- Students from the same city as Rahul

SELECT *
FROM Students
WHERE City =
(
    SELECT City
    FROM Students
    WHERE Name = 'Rahul'
);

-------------------------------------------------

-- Students older than the average age

SELECT *
FROM Students
WHERE Age >
(
    SELECT AVG(Age)
    FROM Students
);
