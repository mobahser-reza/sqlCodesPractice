--aggregation: group by, ...
-- db-> programmability->functions-> aggregate functions
-- system functions-> aggregate functions-> sum() , max(), min(), avg(), count()
-- user jeta dibe sheta user defined function


create database practice
use practice

create table aggregates(
id int,
name varchar(20),
salary money,
Gender char(1)
)

--delete from aggregates -> manually delete korte pari table
select * from aggregates


insert into aggregates values(1, 'Reza', 20000, 'M')
insert into aggregates values(1, 'Reza', 20000, 'M')
insert into aggregates values(1, 'Reza', 20000, 'M')


insert into aggregates values(2, 'Akib', 60000, 'F')
insert into aggregates values(2, 'Akib', 60000, 'F')
insert into aggregates values(3, 'Anik', 10000, 'M')
insert into aggregates values(6, 'Faysal', 40000, 'M')


--ekhon akhane select baki id, name dile error dibe ai aggregate function ar jonno,
-- aigula dile aggregate function dite hobe naile group by clause dite hobe
-- jei column ta nibo alada sheitar group by hobe
select id,name,  sum(salary) as Total_Salary
from aggregates
group by id, name
--order by Total_Salary desc
-- ai sum bade je koyta coumn nibo shobgulake group by korte hobe...

--shob data delete hoye jabe table theke
---> delete from aggregates
delete from aggregates
select * from aggregates
insert into aggregates values(1, 'Reza', 20000, 'M')
insert into aggregates values(2, 'Reza', 20000, 'M')
insert into aggregates values(3, 'Reza', 20000, 'M')
insert into aggregates values(4, 'Reza', 20000, 'M')

select * from aggregates
select  name, sum(salary) as totsalary, gender 
from aggregates
group by  name, gender

--now for max, min, count, avg

select * from employees

select employee_id, first_name, sum(salary) as total_salary
from employees
group by employee_id, first_name



select job max(salary) as max_salary
from employees
group by employee_id, first_name

select min(salary) as min_salary
from employees

select avg(salary) as avg_salary
from employees


--count die row count kore koyta row ase total
select count(employee_id) as count_row
from employees

--*** jekhane repeated column ase oita nile oita die group korle sum ta dekhabe...
--job id repeated ache
--***imp

select * from employees

-- where jabe group by ar age boshbe
-- where clause die paile having ar dorkar nai....
-- having hocche hobe group by ar pore..
-- aggregation ar belay amra filter korte gele then having use korbo...
select job_id, sum(salary) as total_salary
from employees
where job_id = 'IT_PROG'
group by job_id
--having job_id = 'IT_PROG'

--now say for jei dept ar total salary ta 50000 theke beshi ...
--** aggregation take filtering korte gele oita where a hobe na tai having dibo...

--** last a hocche order by use korbo
select job_id, sum(salary) as total_salary
from employees
group by job_id
having sum(salary) > 50000
order by total_salary desc








































