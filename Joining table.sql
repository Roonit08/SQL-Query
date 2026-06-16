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


-- Ascending and dececnding order

SELECT std_name,std_id FROM Student
ORDER BY std_id ASC;

SELECT std_name,std_id FROM Student
ORDER BY std_name DESC;

-- Add new columns to the existing Student table
ALTER TABLE Student ADD COLUMN age INT;
ALTER TABLE Student ADD COLUMN marks DECIMAL(5,2);
ALTER TABLE Student ADD COLUMN gmail VARCHAR(100);
ALTER TABLE Student ADD COLUMN location VARCHAR(100);

-- Update each student with age, marks, gmail, and location
UPDATE Student SET age = 22, marks = 85.50, gmail = 'joseph@gmail.com',location = 'Kathmandu' WHERE std_id = '0101';
UPDATE Student SET age = 21, marks = 78.00, gmail = 'kushal@gmail.com',location = 'Pokhara' WHERE std_id = '6666';
UPDATE Student SET age = 20, marks = 91.25, gmail = 'rohit@gmail.com',location = 'Lalitpur' WHERE std_id = '9838';
UPDATE Student SET age = 23, marks = 67.75, gmail = 'sudip@gmail.com',location = 'Bhaktapur' WHERE std_id = '2729';
UPDATE Student SET age = 19, marks = 88.00, gmail = 'bipan@gmail.com',location = 'Chitwan' WHERE std_id = '3421';
UPDATE Student SET age = 22, marks = 73.50, gmail = 'priya@gmail.com',location = 'Butwal' WHERE std_id = '5673';
UPDATE Student SET age = 18, marks = 95.00, gmail = 'jimmy@gmail.com',location = 'Biratnagar' WHERE std_id = '7812';
UPDATE Student SET age = 25, marks = 60.00, gmail = 'mathews@gmail.com',location = 'Dharan' WHERE std_id = '4590';
UPDATE Student SET age = 21, marks = 82.25, gmail = 'earling@gmail.com',location = 'Hetauda' WHERE std_id = '6234';
UPDATE Student SET age = 20, marks = 76.50, gmail = 'tucker@gmail.com',location = 'Janakpur' WHERE std_id = '8901';
UPDATE Student SET age = 17, marks = 99.00, gmail = 'hannah@gmail.com',location = 'Pokhara' WHERE std_id = '1345';
UPDATE Student SET age = 27, marks = 55.75, gmail = 'anita@gmail.com',location = 'Kathmandu' WHERE std_id = '9087';
UPDATE Student SET age = 24, marks = 80.00, gmail = 'rahul@gmail.com',location = 'Lalitpur' WHERE std_id = '2678';
UPDATE Student SET age = 21, marks = 87.50, gmail = 'nischal@gmail.com',location = 'Bhaktapur' WHERE std_id = '5012';
UPDATE Student SET age = 22, marks = 79.25, gmail = 'manish@gmail.com',location = 'Chitwan' WHERE std_id = '3789';
UPDATE Student SET age = 20, marks = 83.00, gmail = 'paul@gmail.com',location = 'Butwal' WHERE std_id = '6456';
UPDATE Student SET age = 21, marks = 92.75, gmail = 'ridhima@gmail.com',location = 'Kathmandu' WHERE std_id = '7123';
UPDATE Student SET age = 22, marks = 88.50, gmail = 'harry@gmail.com',location = 'Pokhara' WHERE std_id = '4867';
UPDATE Student SET age = 23, marks = 74.00, gmail = 'chris@gmail.com',location = 'Biratnagar' WHERE std_id = '9234';
UPDATE Student SET age = 20, marks = 90.00, gmail = 'ronit@gmail.com',location = 'Kathmandu' WHERE std_id = '0408';

SELECT * FROM Student;

-- altering old table to add a primary key
ALTER TABLE Student ADD PRIMARY KEY (std_id);

-- adding two new tables 
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_nameVARCHAR(100),
    credits INT,
    department VARCHAR(50)
);

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    std_id VARCHAR(20),
    course_id INT,
    grade VARCHAR(5),
    enrollment_date DATE,
    FOREIGN KEY (std_id) REFERENCES Student(std_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Step 4: Inserting data into Course table
INSERT INTO Course (course_id, course_name, credits, department)
VALUES
(1,'Database Systems',3,'Computer Science'),
(2,'Data Structures',3,'Computer Science'),
(3,'Operating Systems',3,'Computer Science'),
(4,'Computer Networks',3,'Computer Science'),
(5,'Mathematics',4,'Science'),
(6,'Physics',4,'Science'),
(7,'Business Communication',2,'Management'),
(8,'Artificial Intelligence',3,'Computer Science');

-- Step 5: Insert data into Enrollment table
INSERT INTO Enrollment (enrollment_id, std_id, course_id, grade, enrollment_date)
VALUES
(1,'0101',1,'A','2025-01-15'),
(2,'6666',2,'B+','2025-01-15'),
(3,'9838',3,'A-','2024-01-10'),
(4,'2729',4,'B','2025-01-10'),
(5,'3421',5,'A+','2026-01-20'),
(6,'5673',6,'B-','2024-01-20'),
(7,'7812',1,'A','2027-01-05'),
(8,'4590',2,'C+','2022-01-05'),
(9,'6234',3,'B+','2024-01-12'),
(10,'8901',4,'A-','2026-01-12'),
(11,'1345',5,'A+','2029-01-08'),
(12,'9087',6,'B','2020-01-08'),
(13,'2678',7,'B+','2023-01-18'),
(14,'5012',8,'A','2024-01-18'),
(15,'3789',1,'B-','2024-01-22'),
(16,'6456',2,'A-','2026-01-22'),
(17,'7123',3,'A+','2024-01-25'),
(18,'4867',4,'B+','2024-01-25'),
(19,'9234',5,'B','2024-01-30'),
(20,'0408',6,'A','2025-01-30');

-- displaying all the tables
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Enrollment;

SELECT * FROM Student s


-- joining two tables 
-- Inner join 
SELECT e.grade,s.std_name,s.age,e.enrollment_date
FROM Student s
INNER JOIN Enrollment e
ON e.std_id = s.std_id;

-- left join 
SELECT * 
FROM Student s
LEFT JOIN Enrollment e
ON e.std_id = s.std_id;

-- Right join
SELECT * 
FROM Student s
RIGHT JOIN Enrollment e
ON e.std_id = s.std_id;

-- FUll join 
SELECT *
FROM Enrollment e
FULL JOIN Student s
ON e.std_id = s.std_id;

-- corss join
SELECT * FROM Enrollment 
CROSS JOIN Student;