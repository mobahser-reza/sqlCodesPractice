--temporary table and union

-- temporary table creation:
-- ** it will store in the tempdb datbase from the system database...

--local temp table:

create table #temp_table01
( ID int,
Name varchar(30),
Salary money,
age char(2)

)

select * from #temp_table01

select Name
from #temp_table01
where id = 2

insert into #temp_table01 values(1, 'Reza', 20000, 'M')
insert into #temp_table01 values(2, 'Geza', 30000, 'F')
insert into #temp_table01 values(3, 'Keza', 40000, 'F')
insert into #temp_table01 values(4, 'Leza', 50000, 'M')
insert into #temp_table01 values(5, 'Peza', 60000, 'F')


select Name
from #temp_table01
where id = 2

select * from #temp_table01

--global temp table:

create table ##global_temp_tbl02
(ID int,
Name varchar(30),
Salary money,
age char(2)

)

-- can create a query into a temp table:
select * into #tememptbl03
from employees
where employee_id between 101 and 115

select * from #tememptbl03


--*** now UNION and UNION ALL --------***


Create table Worker
( id int,
Name varchar(20),
address varchar(100),
Gender char(1)
)
Insert into Worker values(1, 'King', '12 King street','M')
Insert into Worker values(2, 'Jon', '20 Jon street','M')
Insert into Worker values(3, 'Sam', '14 Sam street','M')
Insert into Worker values(4, 'Ben', '33 Ben street','M')
Insert into Worker values(5, 'Sara', '23 Sara street','F')


select * from Worker



Create table Customer
( id int,
Name varchar(20),
address varchar(100),
Gender char(1)
)
Insert into Customer values(1, 'Alen', '44 Alen street','M')
Insert into Customer values(2, 'Kate', '55 Kate street','F')
Insert into Customer values(3, 'Elis', '66 Elis street','M')
Insert into Customer values(4, 'Ben', '33 Ben street','M')
Insert into Customer values(5, 'Sara', '23 Sara street','F')

select * from Customer

Create table Vendor
( id int,
Name varchar(20),
address varchar(100),
Gender char(1)
)
Insert into Vendor values(1, 'Dev', '78 Dev street','M')
Insert into Vendor values(2, 'Joe', '87 Joe street','M')
Insert into Vendor values(3, 'Joly', '88 Joly street','F')
Insert into Vendor values(4, 'Ben', '33 Ben street','M')
Insert into Vendor values(5, 'Sara', '23 Sara street','F')

select * from Worker
select * from Customer
select * from Vendor


--now using union:
---*** Union korle shob akta table a ashe jabe column barabe na.... 1ta table a...
---*** union all dile duplicate shoho ashbe....
---*** column same hoite hobe....
select id, name, '', '' from Worker
--union
union all
select * from Customer
union all
select * from Vendor

select id, name, address, Gender from Worker
where id in(1,2)
union all
select id, name, address, Gender from Customer
where id in(1,2)  
select name, id, address, Gender from Customer
where id in(1,2)      ---> it will show error here
---*** but if the column is same number but data type is different then it will not gonna work..
union all
select * from Vendor
where id in(1,2)

select id, name, address, Gender from Worker
where Gender = 'M'
union all
select id,name, address, Gender from Customer
where Gender = 'F' 
union all
select * from Vendor
where Gender = 'F'


---*** union a hocche append hoy row gula barte thake niche niche ashe...










