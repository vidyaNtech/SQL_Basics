-- Display all students older than 20

SELECT *
FROM Students
WHERE Age > 20;

-------------------------------------------------

-- Display students from Bangalore

SELECT *
FROM Students
WHERE City = 'Bangalore';

-------------------------------------------------

-- Display only Name and Age

SELECT Name, Age
FROM Students
WHERE Age <= 21;

-------------------------------------------------

-- Display students whose StudentID is greater than 2

SELECT *
FROM Students
WHERE StudentID > 2;

-------------------------------------------------

-- Display students whose age is not equal to 20

SELECT *
FROM Students
WHERE Age <> 20;
