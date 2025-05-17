---Module_1 Homework_2
---1.Fetch all the data from the employee’s table. 
select * from employees
---2.Fetch the top ten rows from the employee’s table. 
SELECT TOP (10)* FROM Oracle_emptable.[dbo].[employees]
---3.Fetch the Last name, job ID, and salary from the employee’s table. 
SELECT [last_name],[job_id],[salary]
  FROM Oracle_emptable.[dbo].[employees]
---4.Fetch the first two rows from the employee’s table.
SELECT TOP (2)* FROM Oracle_emptable.[dbo].[employees]
---5.Fetch King's all information (column Last Name).
SELECT *FROM employees where last_name='king'
---6.Assign alias for Employee ID, Last Name, and salary columns, show different patterns.
SELECT Employee_ID as id, last_name as name,salary as earning  from employees
---7.Fetch Chen, Austin, and king’s employee id, last name, and salary from the employee’s table.
SELECT employee_id, last_name,salary
FROM employees
WHERE last_name IN ('Chen', 'Austin','king')
---8.Fetch all the information between 100 to 105 from the employee’s table.
SELECT * FROM employees where employee_id between 100 and 105
---9.Fetch all the information using like operator(%) from employees table
	---9a) Find only the people their first name is ‘John’
	SELECT * FROM employees where first_name='john'
	---9b) Find people their first name start with ‘Al’
	SELECT * FROM employees where first_name like 'Al%'
	---9c) Find people their first name end with ‘Al’
	SELECT * FROM employees where first_name like '%Al'
---10.Fetch employee salary of more than 16000 dollars 
SELECT * FROM employees where salary>16000
---11.Fetch employee salary of 5000 and Less than 5000 dollars 
SELECT * FROM employees where salary<=5000
---12.Fetch employee’s data where the employee’s salary is more than 8000 and less than 9000
SELECT * FROM employees where salary> 8000 and salary< 9000
---13.Fetch employees from the table when salary will not show 8000
SELECT * FROM employees where salary<> 8000
---14.Fetch Unique Job id from the employee’s table
SELECT DISTINCT JOB_ID FROM employees
---15.Fetch data from employees, show the using ‘and’ / ‘or ’ operators
SELECT last_name, salary 
FROM employees
WHERE salary>10000 AND salary<20000 or last_name='king'
---16.Fetch employee id and salary in ascending and descending order.
SELECT employee_id, salary
FROM employees
ORDER BY salary ASC
---17.Fetch the last two rows from the employee table
SELECT TOP (2)* FROM Oracle_emptable.[dbo].[employees] order by employee_id desc

---18.Fetch data, who get the commission at the employee’s table. 
SELECT first_name  AS Full_Name, commission_pct
 FROM  employees
  WHERE commission_pct IS not NULL

---19.Fetch data, who did not get the commission at the employee’s table. 
SELECT first_name  AS Full_Name, commission_pct
 FROM  employees
  WHERE commission_pct IS NULL
