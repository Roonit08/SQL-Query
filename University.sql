SELECT setting
FROM pg_settings
WHERE name = 'data_directory';

SELECT oid, datname
FROM pg_database;

-- Creating database --
CREATE DATABASE University; 

-- Creating a table --
CREATE TABLE Student(
    std_name    VARCHAR(50),
    std_id      VARCHAR(20),
    std_contact VARCHAR(20),
    enrolled_year INT,
    semester    VARCHAR(50)
);

-- Displaying the table
SELECT * FROM Student;

-- Insert commands
INSERT INTO Student(std_name, std_id, std_contact, enrolled_year, semester)
VALUES('Ronit', '0408', '9815907625', 2025, 'Fall');

INSERT INTO Student
VALUES('Joseph', '0101', '9784359574', 2025, 'Fall');

INSERT INTO Student
VALUES('Kushal', '6666', '9844874304', 2025, 'Fall');

-- Multi-value insertion
INSERT INTO Student(std_name, std_id, std_contact, enrolled_year, semester)
VALUES
('Rohit',   '9838', '9862751625', 2024, 'spring'),
('Sudip',   '2729', '9866534296', 2025, 'spring'),
('Bipan',   '3421', '9845123678', 2026, 'spring'),
('Priya',   '5673', '9812345670', 2024, 'spring'),
('Jimmy',   '7812', '9878654321', 2027, 'spring'),
('Mathews', '4590', '9856781234', 2022, 'spring'),
('Earling', '6234', '9823456789', 2024, 'spring'),
('Tucker',  '8901', '9867890123', 2026, 'spring'),
('Hannah',  '1345', '9834567890', 2029, 'spring'),
('Anita',   '9087', '9889012345', 2020, 'spring'),
('Rahul',   '2678', '9845678901', 2023, 'spring'),
('Nischal', '5012', '9856789012', 2024, 'spring'),
('Manish',  '3789', '9823901234', 2024, 'spring'),
('Paul',    '6456', '9878012345', 2026, 'spring'),
('Ridhima', '7123', '9812567890', 2024, 'spring'),
('Harry',   '4867', '9867123456', 2024, 'spring'),
('Chris',   '9234', '9834901234', 2024, 'spring');

-- Update table
UPDATE Student 
SET std_name = 'Aman'
WHERE std_id = '6666';

UPDATE Student 
SET std_name = 'Kushal'
WHERE std_id = '6666';

-- Delete a row
DELETE FROM Student 
WHERE std_id = '0408';

-- Re-insert deleted row
INSERT INTO Student(std_name, std_id, std_contact, enrolled_year, semester)
VALUES('Ronit', '0408', '9815907625', 2025, 'Fall');

-- DISTINCT
SELECT DISTINCT std_name, semester FROM Student;
SELECT DISTINCT semester FROM Student;

-- Row selection
SELECT * FROM Student;
SELECT std_name, std_contact FROM Student;
SELECT * FROM Student WHERE enrolled_year = 2025;

-- Operators
SELECT * FROM Student
WHERE enrolled_year >= 2025;


SELECT * FROM Student
WHERE enrolled_year>=2023
AND enrolled_year<=2024;

-- Between 
SELECT * FROM Student
WHERE enrolled_year BETWEEN 2020 AND 2022;

-- Pattern Matching 
-- B
-- % LIKE
SELECT * FROM Student
WHERE std_name LIKE '%H%';

SELECT * FROM Student
WHERE std_name LIKE '__r%';

-- NULL 
SELECT * FROM Student;

SELECT * FROM Student WHERE std_id IS NULL;

SELECT * FROM Student WHERE std_id IS NOT NULL;