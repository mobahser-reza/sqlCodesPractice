------
---to know date today:
select getdate()

---* cast() a 1 ta argument ar convert a 3 ta argument jay, last arta style convert ar...
select 'My Birthday is: ' + convert(varchar,getdate(), 101)




-------------------------------------------------------------------
--*Variable:  -> data store kore rakha jate onek jaygay use korte pari variable ta...
--a = ' my birthday'
--x= 200

--***now SQL server a variable kivabe kore: avabe declare kora hoy:
--* puarata nie execute korte hobe...
declare @a  float = 500
declare @b float
set @b = 200
--select @a / @b

declare @c varchar(20) = 'name'

select cast(@a as varchar) +  cast(@b as varchar) + @c 

---****** atai hocche dynamic query jehetu varible use kortesi.... ar amra je query kore ashchi agula hocche harcoded query...
---***** akhane puro declare shoho run korte hobe
declare @emp int
set @emp = 200
----- * atai hocche dynamic query:
select * from employees
where employee_id = @emp


------------
---***** Table variable create kora:
----**** it's like a temporary table
--- ai table variable ta just runtime a create kore ai....
declare @emptbl table
(
Id int not null primary key,
FirstName varchar(20),
Salary money
)
insert into @emptbl values(1, 'Reza', 2000)
insert into @emptbl values(2, 'Teza', 3000)
insert into @emptbl values(3, 'Geza', 4000)

select * from @emptbl


-- variable with date:

declare @date datetime
set @date = '2023/12/20'

select 'My day is: ' + convert(varchar,@date, 101)


--variable table example:


DECLARE @ProfitPriceTable TABLE (
    Name VARCHAR(50),
    StandardCost INT,
    ListPrice  INT
);

DECLARE @ProductID INT = 999;
insert into @ProfitPriceTable values('Don', 200, 500)
insert into @ProfitPriceTable values('Leo', 300, 800)
insert into @ProfitPriceTable values('Danny', 400, 1200)

--select * from @ProfitPriceTable

select Name, ListPrice, StandardCost
from [Production].[Product]
where ProductID = @ProductID

select *, StandardCost - ListPrice as Profit
from @ProfitPriceTable
--*** ata kichukhoner jonno memory te theke jay....variable table ta...







 










