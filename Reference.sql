
create table employee(
id int unique,
name varchar(25)not null,
age int check (age>18),
email varchar(25),
department varchar(25) default('Database')
);


insert  into employee(id,name,age)
values(1,'ABC',10);

insert  into employee(id,name,age)
values(1,'ABC',19);

SELECT * FROM employee;

insert  into employee(id,name,age,department)
values(2,'ABC',26,'network');

insert  into employee(id,name,age,email,department)
values(3,'ABC',26,'abc123@gamil.com','network');


create table DEPARTMENT(
 department_id INT PRIMARY KEY,
 department_name VARCHAR (25)
);

SELECT * FROM  DEPARTMENT;
insert INTO DEPARTMENT (department_id,department_name)
values(1,'BIT');
SELECT * FROM  DEPARTMENT;
insert INTO DEPARTMENT (department_id,department_name)
values(2,'BIT');

CREATE TABLE EMPLOYEE1(
employee_id INT PRIMARY KEY,
employee_name varchar(25),
address varchar(30),
department_id int,

--CONSTRAINT 
constraint fk_department_id
foreign key(department_id)
references DEPARTMENT(department_id)
);

INSERT INTO EMPLOYEE1(employee_id,employee_name,address,department_id)
values(1,'manish','ktm',3)

INSERT INTO EMPLOYEE1(employee_id,employee_name,address,department_id)
values(1,'manish','ktm',1)

INSERT INTO EMPLOYEE1(employee_id,employee_name,address,department_id)
values(1,'Kushal;','ktm',1)

INSERT INTO EMPLOYEE1(employee_id,employee_name,address,department_id)
values(2,'kushal','ktm',1)

select * from EMPLOYEE1;
select * from DEPARTMENT;


delete from DEPARTMENT where department_id=1;

drop table EMPLOYEE1;

CREATE TABLE EMPLOYEE2(
employee_id INT PRIMARY KEY,
employee_name varchar(25),
address varchar(30),
department_id int,

--CONSTRAINT 
constraint fk_department_id
foreign key(department_id)
references DEPARTMENT(department_id)
on delete cascade
);

INSERT INTO EMPLOYEE2(employee_id,employee_name,address,department_id)
values(1,'Ronit','ktm',2)

INSERT INTO EMPLOYEE2(employee_id,employee_name,address,department_id)
values(2,'kushal','ktm',1)

delete from DEPARTMENT where department_id=1;

drop table EMPLOYEE2;

select * from EMPLOYEE2;
select * from DEPARTMENT;


