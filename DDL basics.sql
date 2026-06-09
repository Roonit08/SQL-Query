
SELECT setting
FROM pg_settings
WHERE NAME = 'data_directory';

SELECT oid, datname
FROM pg_database;

-- Creating databse --
CREATE DATABASE Ronit;  

-- creating a table--

CREATE TABLE jersey(
price INT,
brand VARCHAR(50),
club_name VARCHAR(50)
);

-- display table
SELECT * FROM kit;

-- adding a new column
ALTER TABLE jersey ADD COLUMN quality VARCHAR(50);

-- change column datatype
ALTER TABLE jersey ALTER COLUMN price TYPE float;

-- 
-- drop a column
ALTER TABLE jersey DROP COLUMN quality;

-- rename table 
ALTER TABLE jersey RENAME TO kit;

-- rename column
ALTER TABLE kit RENAME COLUMN club_name TO team_name;

-- DROP TABLE jersey

-- Truncate table
TRUNCATE TABLE jersey;

SELECT * FROM kit;