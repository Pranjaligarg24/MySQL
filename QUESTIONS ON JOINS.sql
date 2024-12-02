create database it_company;
use it_company;
select * from employees_table;
select * from departments_table;
select * from projects_table;
#Write a query to get Employee and Department details using join. 
select  emp_id , emp_name, department_name 
from employees_table left join departments_table
on employees_table.department_id = departments_table.department_id;

#Write a query to retrieve all employees with their departments, even if the department is missing.
select emp_name , department_name
from employees_table left join departments_table
on employees_table.department_id = departments_table.department_id;

#Write a query to get department details even if there are no employees in that department. 
select emp_name , department_name
from employees_table right join departments_table
on employees_table.department_id = departments_table.department_id;

#Write a query to get all employees and departments, whether matched or not. 
select  emp_id , emp_name , department_name
from employees_table left join departments_table
on employees_table.department_id = departments_table.department_id;

#JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information. 
select  emp_name , department_name , project_id , project_name
from departments_table left join employees_table
on departments_table.department_id = employees_table.department_id
left join projects_table
on employees_table.emp_id= projects_table.emp_id;

#Find employees who are not assigned to any projects.
select emp_name , project_id 
from employees_table left join projects_table
on employees_table.emp_id= projects_table.emp_id where project_id is null;

#Find departments with no employees using a RIGHT JOIN.
select  department_name , emp_name
from employees_table right join departments_table
on employees_table.department_id = departments_table.department_id where emp_name is null;

#Write a query to get Employee and Department details using join with aliases. 

select  count( emp_name ), department_name
from employees_table right join departments_table
on employees_table.department_id = departments_table.department_id group by department_name;


#Write a query to find employees in the same department as other employees. 
select e1.emp_name
from employees_table e1 join employees_table e2 
on e1.department_id =e2.department_id
where e1.emp_id != e2.emp_id;

#Write a query to find projects managed by employees in the 'IT' department. 
select  emp_name , department_name , project_name
from departments_table d right join employees_table e
on d.department_id = e.department_id
 right join projects_table p
on e.emp_id = p.emp_id where department_name = "IT" ; 

#Write a query to show employees and their project information (even if not assigned to a project). 
select emp_name , project_id , project_name
from employees_table left join projects_table
on employees_table.emp_id= projects_table.emp_id ;

#Find employees who work in departments with names starting with 'A'. 
select   emp_name , department_name
from employees_table left join departments_table
on employees_table.department_id = departments_table.department_id where emp_name LIKE "A%";

#Find the total number of employees in each department using GROUP BY and JOIN. 
select  department_name, count( emp_name ) as " no. of employees"
from employees_table right join departments_table
on employees_table.department_id = departments_table.department_id group by department_name;

#Get the list of departments with more than one employee. 
select     department_name , count(emp_name)  as "no. of employees " 
from employees_table right join departments_table
on employees_table.department_id = departments_table.department_id group by department_name having count(emp_name)>1;

