-- ==========================================
-- Question 1
-- Record newly inserted students
-- ==========================================

CREATE TABLE Student_Insert_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Action TEXT
);

CREATE TRIGGER student_insert_audit
AFTER INSERT ON Students
BEGIN
    INSERT INTO Student_Insert_Audit(StudentID, Action)
    VALUES (NEW.StudentID, 'INSERT');
END;


-- ==========================================
-- Question 2
-- Table for deleted students
-- ==========================================

CREATE TABLE Student_Delete_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Name TEXT
);


-- ==========================================
-- Question 3
-- Record deleted students
-- ==========================================

CREATE TRIGGER student_delete_audit
AFTER DELETE ON Students
BEGIN
    INSERT INTO Student_Delete_Audit(StudentID, Name)
    VALUES (OLD.StudentID, OLD.Name);
END;


-- ==========================================
-- Question 4
-- Record mark changes
-- ==========================================

CREATE TABLE Student_Marks_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    OldMarks INTEGER,
    NewMarks INTEGER
);

CREATE TRIGGER student_marks_update
AFTER UPDATE OF Marks ON Students
BEGIN
    INSERT INTO Student_Marks_Audit(
        StudentID,
        OldMarks,
        NewMarks
    )
    VALUES (
        OLD.StudentID,
        OLD.Marks,
        NEW.Marks
    );
END;


-- ==========================================
-- Question 5
-- Drop a trigger
-- ==========================================

DROP TRIGGER student_insert_audit;


-- ==========================================
-- Question 6
-- Old and new marks
-- ==========================================

CREATE TRIGGER marks_change_audit
AFTER UPDATE OF Marks ON Students
BEGIN
    INSERT INTO Student_Marks_Audit(
        StudentID,
        OldMarks,
        NewMarks
    )
    VALUES (
        OLD.StudentID,
        OLD.Marks,
        NEW.Marks
    );
END;


-- ==========================================
-- Question 7
-- Employee insert audit
-- ==========================================

CREATE TABLE Employee_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID INTEGER,
    Action TEXT
);

CREATE TRIGGER employee_insert_audit
AFTER INSERT ON Employees
BEGIN
    INSERT INTO Employee_Audit(EmployeeID, Action)
    VALUES (NEW.EmployeeID, 'Employee Added');
END;


-- ==========================================
-- Question 8
-- Employee delete audit
-- ==========================================

CREATE TRIGGER employee_delete_audit
AFTER DELETE ON Employees
BEGIN
    INSERT INTO Employee_Audit(EmployeeID, Action)
    VALUES (OLD.EmployeeID, 'Employee Deleted');
END;


-- ==========================================
-- Question 9
-- OLD vs NEW
-- ==========================================

-- OLD represents the previous row value.
-- NEW represents the new row value.


-- ==========================================
-- Question 10
-- Trigger vs Stored Procedure
-- ==========================================

-- A trigger executes automatically when
-- its associated event occurs.
--
-- A stored procedure is normally executed
-- explicitly by an application or SQL statement.
