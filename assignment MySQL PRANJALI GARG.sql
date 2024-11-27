# 1. Create database named company and a table named employees with the given fileds.
create database Company;
use Company;
create table Employees (Id INT NOT NULL UNIQUE ,Name varchar(100) NOT NULL, Position varchar(100) ,Salary decimal(10,2) ,Date_of_joining date); 
Select* from Employees;

# 2. Insert the given data into the employees table.
insert into Employees (Id, Name , Position, Salary, Date_of_joining )
values (1,"John Doe","Manager", 55000.00, "2020-10-15");
insert into Employees (Id, Name , Position, Salary, Date_of_joining )
values(2,"Jane Smith","Developer",48000.00,"2019-07-10"),
	  (3,"Alice Johnson","Designer",45000.00,"2021-03-22"),
      (4,"Bob Brown","Developer",50000.00,"2018-11-01");
      
# 3. Write a query to retrieve all employees who are developers.
select* from Employees where Position="Developer";

# 4. 	Write a query to update the salary of Alice Johnson to 46000.00.
update Employees
set Salary= 46000.00 where Name="Alice Johnson";
set sql_safe_updates=0;

# 5. Write a query to delete the employee record for Bob Brown .
Delete from Employees where Name="Bob Brown";

# 6. Write a query to find the employees who have a salary greater than 48000. 
select* from Employees where Salary>48000;

# 7. Write a query to add new column email to the employees table. 
alter table Employees
add Email varchar(100);

# 8. Write a query to update a email for John Doe to john.doe@company.com . 
 update Employees 
 set Email="john.doe@company.com" where Name="John Doe";
 
 # 9. Write a query to retrieve only the name and salary of the employees. 
 select Name , Salary from Employees;
 
 #  10. Write a query to count the numbers of the employees who joined after januaury1,2020 . 
 select count(name) from Employees where Date_of_joining>"2020-01-01";
 
 # 11. Write a query to order the employees by salary in descending order.
 select * from Employees order by salary desc;
   
# 12. Write the query to drop the email column from the employees table . 
alter table Employees 
drop column Email;

# 13. Write a query to find the employees with the highest salary. 
select Name from Employees order by salary desc limit 1;