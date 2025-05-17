--check sql server configuration manager with service as well

-- System db works:
-- everything is running in - master db
--jekono db ar template create kore - model db
--all backup, security, user create - msdb te hoy
--temporary table create korar jonno, remove korle ota chole jabe- tempdb te hoy.....
--Schema meaning, 2 ta databse ar table nie kaj korte gele then schema lagbe
-- dbo holo database object ja hocche schema....dbo holo default schema..
--dbo ar bodle onno schema banay nite pari
--HRschema.dbo.employees--> complete path
-- database name then schema name then table name
-- schema gula banano jay hocche-> database-> security-> Schemas.... ata DBA kore thake
-- akta  regular db arekta dw - data warehouse- data analyst der jonno dorkar hoy
-- 2ta db thakbe always...amader lagbe ai 2ta db 
-- OLTP: continiously use kortesi, ate transaction hocche tai ata amader prod type db
--(OLTP)- Online Transactional Process....
-- akhane amader sql server ar je version ota othoba tar nicherta nibo amra...
--AdventureWorks and AdventureWorksDW backup file...  restore the db with this 2 database
-- akhon amra filter korbo data, slicing and dicing....




use Oracle_emptable

select * from Oracle_emptable.dbo.employees
use world_population
select * from [world_population].dbo.world_population_23

----query for filtering/slicing/dicing
select
*
 --employee_id,
  --first_name
from [dbo].[employees]
--filer korte jabo then where clause use korbo...
select
email, phone_number
from [employees]
where employee_id = 103
-- amra always all die korbona cause onek data thakbe tai amra top die dekhbo..
select top 10 * 
from employees

--** always 1 ta item ar jonno  = sign hoy
select first_name, last_name
from employees
where employee_id = 102

--akhon aker odhike ar jonno IN hobe
select first_name, last_name
from employees
where employee_id in(102, 103)

--akta range ar moddhe hole between and hobe.... ***case sensitive na column name 
-- between and  amra number ar belay use korbo....
select employee_id, first_name, last_name
from employees 
where employee_id between 101 and 103

--string hole '' hobe
select *
-- employee_id, first_name, last_name
from employees 
where first_name between 'Steven' and 'Lex'
-- column ar name akta word hote hobe..

--**alias toiri korbo avabe:....
select employee_id as EmployeeID,
       first_name 'First Name',
	   last_name "last'Name"
	   from employees 






