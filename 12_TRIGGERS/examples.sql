-- ==========================================
-- SQL TRIGGERS - EXAMPLES
-- SQLite
-- ==========================================

-- Student table

CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Marks INTEGER
);

-- ==========================================
-- AFTER INSERT TRIGGER
-- ==========================================

CREATE TABLE Student_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Action TEXT
);

CREATE TRIGGER after_student_insert
AFTER INSERT ON Students
BEGIN
    INSERT INTO Student_Audit(StudentID, Action)
    VALUES (NEW.StudentID, 'Student Added');
END;

-- Test the trigger

INSERT INTO Students(StudentID, Name, Marks)
VALUES (1, 'Rahul', 85);

SELECT *
FROM Student_Audit;


-- ==========================================
-- AFTER UPDATE TRIGGER
-- ==========================================

CREATE TABLE Marks_Audit (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    OldMarks INTEGER,
    NewMarks INTEGER
);

CREATE TRIGGER after_marks_update
AFTER UPDATE OF Marks ON Students
BEGIN
    INSERT INTO Marks_Audit(StudentID, OldMarks, NewMarks)
    VALUES (
        OLD.StudentID,
        OLD.Marks,
        NEW.Marks
    );
END;

-- Test the trigger

UPDATE Students
SET Marks = 90
WHERE StudentID = 1;

SELECT *
FROM Marks_Audit;


-- ==========================================
-- AFTER DELETE TRIGGER
-- ==========================================

CREATE TABLE Deleted_Students (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID INTEGER,
    Name TEXT
);

CREATE TRIGGER after_student_delete
AFTER DELETE ON Students
BEGIN
    INSERT INTO Deleted_Students(StudentID, Name)
    VALUES (OLD.StudentID, OLD.Name);
END;

-- Test the trigger

DELETE FROM Students
WHERE StudentID = 1;

SELECT *
FROM Deleted_Students;


-- ==========================================
-- DROP TRIGGER
-- ==========================================

DROP TRIGGER after_student_insert;
