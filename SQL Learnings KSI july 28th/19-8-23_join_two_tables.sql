--** first one choose 1st table like in select statement and with form then it will be the left table...
--left outer join 

select * from emp1
select * from dept1
select e.ename,
 e.salary,
  e.deptno, -- avabe shudhu deptno nile error show korbe Cause bujhtesena kon table theke ashtese
  d.deptno, --** jetay lagbe alias deya oitay shudhu dibo e. avabe ba d. avabe
   d.dname
from emp1 e
left join dept1 d
on e.deptno = d.deptno

--* akhane dept a hocche 1 to many relationship ...99% time 1 to many relation...
-- *** ERD-> 1 to 1, 1 to many, many to many relationship
-- healthcard ba id card ar shathe relation korle 1-1 relation..
-- many to many hoy-> courses ar peoples thakle 2tatei m->m relation hoy tokhon.....
  -- -> like course ar students, then atar jonno alada akta table banano hoy...
  -->** m-m ta ata ambigous result dey tai arekta table banate hoy jeta 1-> many hoy.... 3rd table banie...































