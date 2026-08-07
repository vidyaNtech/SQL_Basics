-- Question 1

SELECT Students.Name,
       Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- Question 2

SELECT Students.Name,
       Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- Question 3

SELECT Students.Name,
       Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- Question 4

SELECT *
FROM Students
CROSS JOIN Departments;

-------------------------------------------------

-- Question 5

SELECT A.Name AS Employee,
       B.Name AS Manager
FROM Employees A
JOIN Employees B
ON A.ManagerID = B.EmployeeID;

-------------------------------------------------

-- Question 6

SELECT Students.StudentID,
       Students.Name,
       Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- Question 7

SELECT Departments.DepartmentName,
       COUNT(Students.StudentID)
FROM Departments
LEFT JOIN Students
ON Students.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName;

-------------------------------------------------

-- Question 8

SELECT Departments.DepartmentName
FROM Departments
LEFT JOIN Students
ON Students.DepartmentID = Departments.DepartmentID
WHERE Students.StudentID IS NULL;

-------------------------------------------------

-- Question 9

SELECT Students.Name
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentID IS NULL;

-------------------------------------------------

-- Question 10

SELECT Students.Name,
       Departments.DepartmentName
FROM Students
FULL OUTER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
