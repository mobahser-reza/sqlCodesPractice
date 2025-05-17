--subquery making


--Nested sub query can go up to 32 level.

--Subquery executed first then the result is passed to outer Query. 
-- Finally outer query will be executed.

--for who have the max salary query , ** ashob khetre Sub query ashbe
select first_name, max(salary) max_salary
from employees
group by first_name
 
 select max(salary) max_salary
 from employees

 --now here sub query comes: 
 -- who makes the higest salary in the company:
 ---*** avabe 32 bar where clause die kora jay nested/ sub query ta
 select first_name,last_name,salary
from employees
where salary =  (select max(salary) max_salary
 from employees)

 -- aktar beshi value return korle in operator ar shudhu akta value dile =, != etc......
  -- who makes the 4th higest salary in the company:
 select first_name, salary from employees
 where salary = (select min(salary) min_salary from employees 
 where salary in (select top 4 salary from employees
 order by salary desc))
 --min(salary) to dite parbo na vitore tai amake ai sub query dite hobe....
 --*** 1ta clumn nile IN dite pari ar 1 tar beshi column nite gele Exists()
  select first_name, salary from employees
 where salary = (select min(salary) min_salary from employees 
 where exists (select top 4 salary, job_id from employees
 order by salary desc))
 --***** 1 value, 1 column -> = and other..., multiple values , 1 clolumn -> IN, 
 --  multiple values, multiple columns -> exists

 --*** correlated sub query:
 --*** ata arektar shathe related tai, ar normal sub query te related thake na , independent thake....
 --** akhane outer query age run kore then inner query ai correlated ar belay....
 select department_id, department_name from departments d
 where exists ( select e.last_name, *
                from employees e
				where d.department_id = e.department_id)


---------------------------------------------------
--now subquery in FROM clause, it defines drived table/derived table:
---** ata amra akta Virtual query ar moto kore dite pari from clause ar vitore subquery die...
select first_name, last_name 
from (select * from employees) x

---*** subquery in a form clause : using as alias and with filtering:
select first_name, salary,increase_salary from
(SELECT [employee_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary]
	  ,increase_salary = salary + salary * 0.3
      ,[commission_pct]
      ,[manager_id]
      ,[department_id]
  FROM [Oracle_emptable].[dbo].[employees])x
  where x.increase_salary = 11700.00000



  --ex: error show korbe filter korle alada:.... ai jonno amra virutal query te avabe subquery kore alias
  --die korbo

  --SELECT [employee_id]
  --    ,[first_name]
  --    ,[last_name]
  --    ,[email]
  --    ,[phone_number]
  --    ,[hire_date]
  --    ,[job_id]
  --    ,[salary]
	 -- ,increase_salary = salary + salary * 0.3
  --    ,[commission_pct]
  --    ,[manager_id]
  --    ,[department_id]
  --FROM [Oracle_emptable].[dbo].[employees]
  --where increase_salary = 11700.00000


























