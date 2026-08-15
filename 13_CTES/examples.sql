-- ============================================
-- SQL CTE (Common Table Expressions) Examples
-- ============================================


-- 1. Basic CTE
-- Find students who scored more than 80.

WITH HighScorers AS (
    SELECT name, marks
    FROM students
    WHERE marks > 80
)
SELECT *
FROM HighScorers;


-- 2. CTE with AVG()
-- Find the average marks of all students.

WITH AverageMarks AS (
    SELECT AVG(marks) AS avg_marks
    FROM students
)
SELECT *
FROM AverageMarks;


-- 3. CTE with GROUP BY
-- Count students in each department.

WITH DepartmentCount AS (
    SELECT department_id, COUNT(*) AS student_count
    FROM students
    GROUP BY department_id
)
SELECT *
FROM DepartmentCount;


-- 4. CTE with HAVING
-- Find departments having more than 5 students.

WITH DepartmentCount AS (
    SELECT department_id, COUNT(*) AS student_count
    FROM students
    GROUP BY department_id
)
SELECT *
FROM DepartmentCount
WHERE student_count > 5;


-- 5. CTE with JOIN
-- Display student names along with department names.

WITH StudentDetails AS (
    SELECT
        s.name,
        d.department_name
    FROM students s
    JOIN departments d
        ON s.department_id = d.department_id
)
SELECT *
FROM StudentDetails;


-- 6. CTE with SUM()
-- Calculate total salary for each department.

WITH DepartmentSalary AS (
    SELECT
        department_id,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM DepartmentSalary;


-- 7. CTE with MAX()
-- Find the highest salary in each department.

WITH HighestSalary AS (
    SELECT
        department_id,
        MAX(salary) AS highest_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM HighestSalary;


-- 8. Multiple CTEs
-- First calculate department employee count,
-- then find departments having more than 5 employees.

WITH EmployeeCount AS (
    SELECT
        department_id,
        COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_id
),
LargeDepartments AS (
    SELECT
        department_id,
        employee_count
    FROM EmployeeCount
    WHERE employee_count > 5
)
SELECT *
FROM LargeDepartments;


-- 9. CTE used with ORDER BY
-- Find the top 5 highest-paid employees.

WITH EmployeeSalaries AS (
    SELECT name, salary
    FROM employees
)
SELECT *
FROM EmployeeSalaries
ORDER BY salary DESC
LIMIT 5;


-- 10. CTE compared with a Subquery
-- Find employees earning more than the average salary.

WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT avg_salary
    FROM AverageSalary
);


-- 11. CTE with WHERE
-- Find employees whose salary is greater than 50000.

WITH HighSalaryEmployees AS (
    SELECT name, salary
    FROM employees
    WHERE salary > 50000
)
SELECT *
FROM HighSalaryEmployees;


-- 12. Multiple CTEs with JOIN

WITH DepartmentSalary AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
),
DepartmentDetails AS (
    SELECT
        d.department_name,
        ds.average_salary
    FROM departments d
    JOIN DepartmentSalary ds
        ON d.department_id = ds.department_id
)
SELECT *
FROM DepartmentDetails
ORDER BY average_salary DESC;


-- 13. Recursive CTE
-- Generate numbers from 1 to 5.

WITH RECURSIVE Numbers AS (
    SELECT 1 AS number

    UNION ALL

    SELECT number + 1
    FROM Numbers
    WHERE number < 5
)
SELECT *
FROM Numbers;