----index and constrained:

--can see indexes inside the indexes folder...
-- PK ta hocche clustered index jeta auto create hoye jay....

--*** aakhon incdex banale ata physically amake dekhabe na but ata on the fly a ata memory te create kore rakhbe....
--- clustered index ta physically dekha jay ar non clustered index ta dekha jayna physicallt....

--- ** akhane she row address a akta memory te on the fly a she toiri kore rakhe non cluster index a

---*** now creating index:
create index index_salary_01
on [dbo].[employees](salary desc)
--- now check index folder....

---Create a composite clustered Index on the Gender and salary columns:
--- people table a kortesi practice theke:
--- **craeting clustered index:
create clustered index index_clustered_salary_gender
on [dbo].[people]([Gender] asc, [salary] desc)

drop index index_clustered_salary_gender on [dbo].[people]


select * from [dbo].[people]

----***** clustered index korle row gula physicallly change hoye jay....
---*** types of Constraints:
--- -> Constraints: primary key, not null, null, check, default, unique....

create table #tabl_for_constraints
(
ID int primary key,
Name varchar(20) not null,
Gender char(1) check(Gender = 'M' or Gender = 'F'),
Email varchar(30) unique,
Salary int default(0)
)


insert into #tabl_for_constraints values(1, 'Reza', 'M','reza@gmail.com',20000)
insert into #tabl_for_constraints values(1, 'Reza', 'M','reza@gmail.com',20000)-- pk error
insert into #tabl_for_constraints values(2, null, 'M','reza1@gmail.com',20000)--null constraints error
insert into #tabl_for_constraints values(2, 'Reza', 'I','reza1@gmail.com',20000)-- check constraints error
insert into #tabl_for_constraints values(2, 'Reza', 'M','reza@gmail.com',20000) -- unique error
insert into #tabl_for_constraints values(2, 'Reza', 'M','reza1@gmail.com','') -- salary value 0 ashbe......


select * from #tabl_for_constraints


























