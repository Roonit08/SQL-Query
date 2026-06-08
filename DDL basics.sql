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

SELECT * FROM kit;

ALTER TABLE jersey ADD COLUMN quality VARCHAR(50);

-- drop a column
ALTER TABLE jersey DROP COLUMN quality;

-- rename table 
ALTER TABLE jersey RENAME TO kit;



