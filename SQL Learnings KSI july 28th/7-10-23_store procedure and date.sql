--store procedure a parameter a akta input arekta output parameter, amra input tai beshi use korbo..
--*** create  or alter procedure dieu lekha jay.....

--another example of procedure parameter condition:
---***** ai procedure ta amader always thakbe... jokhon run korar tokhon run korbo exec p_name die.....
create or alter procedure p_emp_03
(
@empno int
)
as

begin
if(select count(*) from employees
where employee_id = @empno) = 0
begin
print'there is no id with this '+ cast(@empno as  varchar(20))
end
else
begin
select * from employees
where employee_id = @empno
end

end

exec p_emp_03 400


--LOOP –(while loop only)
--3 step – start, condition, 
--increment/dec

---- while loop ar akhane begin ar end dite hobe.....


declare @val int
set @val = 1
while(@val <= 10)
begin
print @val
set @val =  @val + 1
end
----------------------------------------------------------------------------------------
---PRACTICE MINE:
--update salary of all employees upto 10% with loop
--declare @valupdate float 
--set @valupdate = 0.10
--declare @salary int = (select salary from employees) 
--declare @countemp  int = (select count(*) from employees)
--while(@countemp <> 0)
--begin
--set @salary = (select salary from employees where salary = @salary) 
--update employees set salary = @salary * @valupdate

--break;
--end


--select * from employees



-----*** here is the updated query:
DECLARE @valupdate FLOAT
DECLARE @salary DECIMAL(18, 2)
DECLARE @countemp INT

SET @valupdate = 1.10 -- 10% increase, so multiply by 1.10
SET @countemp = (SELECT COUNT(*) FROM employees)

WHILE (@countemp > 0)
BEGIN
    -- Get the current salary
    SET @salary = (SELECT TOP 1 salary FROM employees ORDER BY employee_id)  -- Replace 'some_column' with the appropriate column to order by

    -- Update the salary
    UPDATE employees
    SET salary = @salary * @valupdate

    -- Decrement the counter
    SET @countemp = @countemp - 1

    -- Check the loop termination condition
    IF @countemp = 0
        BREAK; -- Exit the loop
END



select * from employees


--practice:
declare @countvar int
set @countvar = 1   ----- declaring
while(@countvar <= 10) ----- condition
begin
print @countvar
set @countvar = @countvar +1 ---- increment/decrement
end

----*** break ou dite parbo........

----------------------------------------------------------------------------------------------------
--** local variable/ user defined variable.....
--**Global variable/ system defined variable...

select @@version
select @@servername -- computer ar servername ba jekono server name jeitay use korbo....
select @@IDENTITY
select @@error -- (previous statement run correctly give ‘0’ Other wise give non zero (208), to check error..

--to see the total row .... using global variable:
select @@ROWCOUNT

--ex:
select * from employees
where commission_pct is not null
go --- ***go mane hocche statement break kora mane arekta statement alada kore lekhar jonno......
select @@ROWCOUNT as row_count--*** koyta row ase ta dekhabe oi is not null statement check kore....

--ex of error:
select * from employees
where employee_id in  105
go
select @@error as error_check -- akhen 102 number error dekhacche  ---results ar moddhe error ar number ta pabo koto number ar error...
-- right hole error ta 0 result show korbe....  ---** akhane 102 hocche syntax error ar error -- can check the chart from error site...


---***** DATETIME in sql......
--- prior week/month/year  etc....

--declare @startDate date = '2022/01/01'
--declare @endDate date = '2022/12/31'

declare @startDate date = '1987/01/01'
declare @endDate date = '1987/12/31'
-----*** akhon date take dynamic korbo avabe hard coded na die....




select *
from employees
where hire_date between @startDate and @endDate
--date functions:
--DATEADD(interval, number, date)
--DATEDIFF(interval, startdate, enddate)
select DATEADD(WEEK, 1, GETDATE())
select DATEDIFF(WEEK, '2023-01-01', '2023-01-15')
select DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0))
select DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) - 1, 0)

-------now date and time nie:
-------******most used functions for date and time:
------**** 5 functions of date and time:
getdate()
----- amra nicher 4 take getdate() dhore use kore ber korte pari:
dateadd()
datediff()
datepart()
datename()
select getdate() - 1
select convert(date,getdate())    ---- date a amara convert use kori always..... we know

----**for a birth date:
select datediff(yyyy, '1991-12-23', getdate()) as age
select datediff(mm, '1991-12-23', getdate()) as month  ----> 384 ta month ase oi year ar month theke ajke porjonto
-- getting the part from the date...akhane month ashche...
select datepart(mm, GETDATE()) 
select datepart(dd, GETDATE())
select datepart(yy, GETDATE())
select datepart(day, GETDATE())
select datepart(month, GETDATE())



-- getting the name of the month or day or year:
select datename(mm, GETDATE())
select datename(dw, getdate()) --- day ar nam ar jonno dw...
select datename(month, GETDATE())

--date ar shathe add kora:
select dateadd(yyyy, 5, getdate()) -- ajker date ar year ar shathe 5 jog korbo.....

--last year from today's date:   answer-> using dateadd()
select dateadd(yy, -1, getdate())

--exercise/homework for date and time:
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[JobTitle]
      ,[BirthDate]
	  ,[Year Of Birth] = datediff(yyyy,[BirthDate], getdate() )
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
	  ,[Year of Hire] = datepart(yyyy,[HireDate] )
	  ,[Name of Month] = datename(mm, [HireDate])
	  ,[Name of Year] = datename(yyyy, [HireDate])
	  ,[Name of Day] =  datename(dw, [HireDate])
	  ,[Add Years] = dateadd(yyyy, 1, [HireDate])
	  ,[Add Years Too] = datepart(yyyy, [HireDate]) +1
  FROM [AdventureWorks2017].[HumanResources].[Employee]


  --exercise 2:
  --find prior month and prior year from todays date:

  declare @priorMonthStart date


  ----***** prior month -> ager month ar 1 tarikh.....
  -------***** datediff ta akta number dey tai ata dateadd ar majhkhane amra use korbo.....
  ------*** dat ai dateadd a first a interval then number then date, date 0 dite pari amra......
  set @priorMonthStart = dateadd(month,datediff(month, 0, getdate())-1  ,0)

  select @priorMonthStart


  --prior month end:
  declare @priorMonthEnd date

  set @priorMonthEnd = eomonth(dateadd(month,datediff(month, 0, getdate()) -1 , 0))
  select @priorMonthEnd


  --go 
  --select @@error
  
  ----***** ata prior year start ar query:
  --prior year: -> ager year ar 1st january
    declare @priorYear date
  set @priorYear = dateadd(year,datediff(year, 0, getdate()) - 1 ,0)

  select @priorYear as prior_year
  --select datename(yyyy, @priorYear) as prior_year shudhu year ar nam ar jonno ber kora....

































































































































































































