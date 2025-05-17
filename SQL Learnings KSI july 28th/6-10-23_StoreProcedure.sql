----- store procedure:
--- ata amra server ar moddhe data ta save korbo....
--- store kore rakhtesi jei database ar table ase tar pashe....

--creating stroe procedure:
create procedure emp_procedure_01
as
begin
select * from employees
end

--*** run korte gele execute dite hobe akhane: exec then procedure name.....
exec emp_procedure_01
---execute ou deya jay:
execute emp_procedure_01

---*** jodi existing procedure ta modify korte chai:
alter procedure emp_procedure_01
as
begin
select * from employees
where employee_id between 100 and 107
end

exec emp_procedure_01


---*** amra procedure ar moddhe parameter use korte parbo......
--- **ai parameter a amra variable use korte pari... **akhane variable ar jonno declare use korte hobe na...
alter procedure emp_procedure_01
(
@emp int
)
as
begin
select * from employees
--where employee_id between 100 and 107
where employee_id = @emp
end

exec emp_procedure_01 120



--- now checking with variable: 
---*** if else dile begin ar end deya lage ..... If else with variable example:
declare @age int
set @age = 81
if(@age >= 83)
begin
print'Eligible for vote'
end
else if(@age < 18 and @age > 13)
begin
print'still not acceptable'
end
else if(@age > 80)
begin
print'too old for vote'
end
else
begin
print'not eligible for vote'
end

-----***** agula hocche T-SQL programming.......Transact SQL programming....

--if else with store procedure:

create procedure pro_employees
(
@emp1 int
)
as
begin
declare @check1 int
select @check1 =  count(*) from employees
where employee_id = @emp1
if(@check1 = 0)
begin
print'There is no employee ID in table '+ cast(@emp1 as varchar(20))
end
else
begin
select * from employees
where employee_id = @emp1
end
end


-----***** select dieu variable declare kora jay........ like-> select @check1 = id from emp where.....
alter procedure pro_employees
(
@emp1 int
)
as
begin
declare @check1 int
select @check1 =  count(*) from employees
where employee_id = @emp1
if(@check1 = 0)
begin
print'There is no employee ID in table '+ cast(@emp1 as varchar(20))
end
else
begin
select * from employees
where employee_id = @emp1
end
end


exec pro_employees 98









alter procedure pro_employees










