-- views ---> it's a virtual table...

--View consider as a virtual table.  It is nothing more
-- than a SQL statement that is stored in the database with 
-- an associated name. A view can contain all rows of a table 
-- or select rows from a table. A view can be created from one or many tables.


--view do not store any data. when query execute from the view. 
-- SQL engine execute the underline base tables, and return data from  those tables.  

--View can be treat as a table. You can query from the view. 


create view view_employee_tbl01
as
select * from employees

select first_name,
		last_name
from view_employee_tbl01


create view view_employee_tbl02
as
select last_name, salary
from employees 
where salary > 12000

select * from view_employee_tbl02


alter view view_employee_tbl02
as
select last_name, salary
from employees 
where salary > 10000



create view view_employee_tbl03
as
select last_name, salary, department_name
from employees e
inner join departments d on e.department_id = d.department_id
where salary > 12000

select * from view_employee_tbl03
where department_name = 'Executive'

--*** why we use it: 
-- 1. for security purpose, 2. fetch table for own departments...
---*** for many companies, they will not give us the production table, they will give us the view 
-- and  we will work accordingly...


-- exercise: 
Create table people
  ( 
     Id  int,
     Name varchar(20),
     salary money,
     Gender char(1)
 )

 insert into people values(1, 'Reza', 10000, 'M')
 insert into people values(2, 'Nishat', 20000, 'M')
 insert into people values(3, 'Rifat', 30000, 'F')
 insert into people values(4, 'Mama', 40000, 'F')
 insert into people values(5, 'Khala', 50000, 'M')
 insert into people values(6, 'Nana', 60000, 'M')

 select * from people


 create view v_people
 as
 select * from people

 select * from v_people

 delete from people
 where id = 5

 select * from v_people


 -- sometimes they will give us the views only .... then we may need to work on that...



	create view dup_table
	as 
	select * from people

	 --**Create a duplicate dup_emp (name “dup_emp”) table, from the employee table in 
	--the HR Schema database.
	--create duplicate table:

	select * 
	into dup_people
	from people












