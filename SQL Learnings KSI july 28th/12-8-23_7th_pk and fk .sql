select top 10 * 
from employees


--** we can do multiple aggregation in a query ...

--now pk and fk
-- pk unique ar null hobe na, fk te repeat ba null hote parbe
-- onno table ar pk te ja thakbe ta arek table ar fk te same thakte hobe...
-- akta table a 1 tai primary key
-- primary key dile not null dite hobe

create table emp1(
empno int not null primary key,
ename varchar(30) null,
salary money null,
deptno int null
)

-- akhon foreign key korte gele alter table kore then foreign key add kore reference 
-- table ar nam dibo

alter table emp1
add foreign key (deptno) references dept1(deptno)


--again insert korte gele pk constraints ar error dekhabe, duplicate hobe na
-- ata primary key deyay serial maintain korbe

insert into emp1 values( 100, 'nishat',20000, 1)
insert into emp1 values( 101, 'Mobasher',30000, 2)
insert into emp1 values( 102, 'rifat',40000, 2)
insert into emp1 values( 103, 'sifat',50000, null)
insert into emp1 values( 104, 'jifat',60000, 3)
-- akhon akhane deptno 6 dile ata constraint error dekhabe karon ata nai dept tbl a..
-- null ba same value dileu nibe but jeta nai sheta nibe na
insert into emp1 values( 105, 'Rafat',80000, 6)




select * from emp1



create table dept1(
deptno int not null primary key,
dname varchar(30) null,
location varchar(20) null
)

insert into dept1 values(1, 'HR', 'Uttara')
insert into dept1 values(2, 'Finance', 'Mirpur')
insert into dept1 values(3, 'Management', 'Gulshan')
insert into dept1 values(4, 'Developer', 'Dhanmondi')


select * from dept1
--** pk fk charau join hobe but constraints fulfill korar jonno amra korbo join ar jonno
--*** pk ta arek jaygay reference hishebe use holei sheta foreign key , null ba duplicate hote parbe foreign key ta..
-- onekgula emp ar akta dept hotei pare tai duplicate hote pare foreign key ta








