---Module_2 Homework_5

SELECT *from [dbo].[employees]
SELECT *from [dbo].[departments]
--1) Fetch first_name, last_name, and their department name and location. 
SELECT employees.first_name, employees.last_name,departments.department_name,departments.location_id 
FROM employees
 inner JOIN departments ON employees.department_id=departments.department_id
 
--2) Write a query and display the Employee's info who does not have department_name.
select * 
from employees e
left outer join departments d
on e.department_id = d.department_id
where department_name is null

--3) Display those departments’ names that have not yet been allocated for the employees.
SELECT D.department_id, D.department_name ,E.first_name, E.last_name 
 FROM employees E 
   RIGHT OUTER JOIN departments D
     ON E.department_id = D.department_id
	 where E.first_name is null



--4) Write a query and display the Employee who does not have department_name.
SELECT E.first_name, D.department_name 
FROM employees E
LEFT JOIN departments D
ON D.department_id =E.department_id
WHERE D.department_name IS NULL

--  and, those departments’ names have not yet been allocated for the employees.
--**correct
SELECT D.department_name,  E.first_name
       FROM departments D
        full outer join employees E  ON  D.department_id =E.department_id
            WHERE D.department_name IS NULL or E.employee_id is null



			--another way by subquery:
			SELECT department_name
FROM departments
WHERE department_id NOT IN (
    SELECT DISTINCT department_id
    FROM employees
    WHERE department_id IS NOT NULL
);

select first_name, last_name, department_name
   from employees
     full outer join departments
      on employees.department_id = departments.department_id
       where department_name is null or employee_id is null
