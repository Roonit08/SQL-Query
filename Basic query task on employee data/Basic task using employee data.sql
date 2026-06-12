
-- task 1: Display the first names of all employees who work in the department located in Sydney in alphabetical order.
select EmployeeFirstName 
from Employees 
join Departments on Employees.DepartmentID = Departments.DepartmentID 
where Departments.Location = 'Sydney' 
order by Employees.EmployeeFirstName asc;


-- task 2: Show employees who have worked at the University the shortest amount of time.
select EmployeeFirstName, EmployeeLastName, yearHired 
from Employees 
where yearHired = (select max(yearHired) from Employees);


-- task 3: Display the names of all employees whose age is a palindrome.
select EmployeeFirstName, EmployeeLastName, (2026 - birthYear) as Age 
from Employees 
where cast((2026 - birthYear) as char) = reverse(cast((2026 - birthYear) as char));


-- task 4 : Create a procedure to list the departments along with the number of employees in each department. 
drop procedure if exists CountEmployeesPerDepartment;
delimiter $$
create procedure CountEmployeesPerDepartment()
begin
    select Departments.DepartmentName, Departments.Location, count(Employees.EmployeeID) as TotalEmployees
    from Departments 
    join Employees on Departments.DepartmentID = Employees.DepartmentID
    group by Departments.DepartmentID;
end $$
delimiter ;

call CountEmployeesPerDepartment();


-- task 5: Create a function that finds the average salary of employees in each department. 
drop function if exists AverageSalary;
delimiter $$
create function AverageSalary(dept_id char(3))
returns decimal(10,2)
deterministic
begin
    declare result decimal(10,2);
    select avg(SalaryClass.Salary) into result
    from Employees 
    join SalaryClass on Employees.SalaryID = SalaryClass.SalaryID
    where Employees.DepartmentID = dept_id;
    return result;
end $$
delimiter ;
select AverageSalary('D1');
select Departments.DepartmentName, Departments.Location, AverageSalary(Departments.DepartmentID) as AverageSalary
from Departments;


-- task 6:  Add a new attribute called "EmployeeInitials" to the Employees table. 
alter table Employees add column EmployeeInitials varchar(5);
select * from employees;


-- task 7:  Write a query that populates “EmployeeInitials”, based off the existing stored names.
update Employees 
set EmployeeInitials = concat(left(EmployeeFirstName, 1), left(EmployeeLastName, 1));
select EmployeeFirstName, EmployeeLastName, EmployeeInitials 
from Employees 
limit 10;
