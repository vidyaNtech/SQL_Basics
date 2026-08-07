-- INNER JOIN

SELECT Students.Name, Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- LEFT JOIN

SELECT Students.Name, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- RIGHT JOIN

SELECT Students.Name, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- FULL OUTER JOIN

SELECT Students.Name, Departments.DepartmentName
FROM Students
FULL OUTER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-------------------------------------------------

-- CROSS JOIN

SELECT *
FROM Students
CROSS JOIN Departments;

-------------------------------------------------

-- SELF JOIN

SELECT A.Name AS Employee,
       B.Name AS Manager
FROM Employees A
JOIN Employees B
ON A.ManagerID = B.EmployeeID;
