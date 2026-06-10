SELECT setting
FROM pg_settings
WHERE NAME = 'data_directory';

SELECT oid, datname
FROM pg_database;

-- Creating databse --
CREATE DATABASE University; 

-- creating a table--
CREATE TABLE Student(
std_name INT,
std_id VARCHAR(50),
std_contact INT,
enrolled_year INT,
semester VARCHAR(50)
);

-- updated the mistake table
ALTER TABLE Student ALTER COLUMN std_name TYPE VARCHAR(50);
ALTER TABLE Student ALTER COLUMN std_id TYPE INT USING std_id::INTEGER;

ALTER TABLE Student ALTER COLUMN std_id TYPE VARCHAR(20);
ALTER TABLE Student ALTER COLUMN std_contact TYPE VARCHAR(20);

-- displaying the table
SELECT * FROM Student;

-- Insert command
INSERT INTO Student(std_name,std_id,std_contact,enrolled_year,semester)
VALUES('Ronit','0408','9815907625',2025,'Fall');

INSERT INTO Student
VALUES('Joseph','0101','9784359574',2025,'Fall');

INSERT INTO Student
VALUES('Kushal','6666','9844874304',2025,'Fall');

-- multivalues insertion
INSERT into Student(std_name,std_id,std_contact,enrolled_year,semester)
VALUES('Rohit','9838','9862751625',2024,'spring');
      ('Sudip','2729','9866534296',2024,'spring');

-- update table
UPDATE Student 
SET std_name = 'Aman'
WHERE Std_id = '6666';

UPDATE Student 
SET std_name = 'Kushal'
WHERE Std_id = '6666';

-- delete table
DELETE FROM Student 
WHERE std_id = '0408';

INSERT INTO Student(std_name,std_id,std_contact,enrolled_year,semester)
VALUES('Ronit','0408','9815907625',2025,'Fall');