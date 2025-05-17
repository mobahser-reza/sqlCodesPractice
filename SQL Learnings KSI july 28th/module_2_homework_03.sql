---Module:2 Home work-3
Select * from employees

Select Sum(salary) sum_salary from employees
Select min(salary) min_salary from employees 
Select max(salary) max_salary from employees 
Select count(salary) count_salary from employees
Select avg(salary) avg_salary from employees 

--1) Display manager ID and number of employees managed by the manager.
SELECT manager_id, COUNT(*)as No_employees
  FROM EMPLOYEES
  GROUP BY manager_id
--2) How many employees who are working in each department in the organization	
SELECT job_id, COUNT(*)as No_employees
  FROM EMPLOYEES
  GROUP BY job_id

--3) Display number of employees joined after 15th of the month.
select * from employees

--select day(hire_date) from employees
SELECT
    COUNT(employee_id) AS No_employees
	--employee_id, hire_date
FROM
    employees
WHERE
    DAY(hire_date) > 15

--4) List all the department ids having at least four employees.
SELECT COUNT(EMPLOYEE_ID )as employee,job_id
     FROM employees  
       GROUP BY  job_id
          HAVING COUNT(EMPLOYEE_ID) <=4
-- 5) Display average salary of employees in each department 
SELECT  AVG(salary) as AVG_salary 
      ,[job_id]
      ,[department_id]
  FROM [Oracle_emptable].[dbo].[employees]
   group by job_id,department_id

---6) Display job ID, number of employees, sum of salary, and difference between highest salary and lowest salary of the employees of the job.	

SELECT job_id, COUNT(*)as employee_no, SUM(salary) as sum_of_salary, 
	MAX(salary)-MIN(salary) AS salary_difference 
		FROM employees 
			GROUP BY job_id

---7) Display job ID for jobs with average salary more than 10000.

SELECT job_id, AVG(salary) 
     FROM employees 
         GROUP BY job_id 
               HAVING AVG(salary)> 10000
---8) Display years in which more than 10 employees joined.
--testing for 3
SELECT COUNT(EMPLOYEE_ID )as employee, hire_date
     FROM employees  
       GROUP BY  hire_date 
          HAVING COUNT(EMPLOYEE_ID) > 3

SELECT COUNT(EMPLOYEE_ID )as employee, hire_date
     FROM employees  
       GROUP BY  hire_date
          HAVING COUNT(EMPLOYEE_ID) > 10