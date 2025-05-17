--*** date ar khetre YEAR dile yearta pabo, month dile month ta, day dile day ta kono date theke nite chaile..
--  ai pk ar fk diei amader join ta hobe...
-- 1 to many te many site ta holo foreign key site jehetu duplicate value ase....


select * from emp1
select * from dept1
--now for join tables

-- join and inner join same thing.....
select * from emp1
--join dept1 
inner join dept1 
on emp1.deptno = dept1.deptno

--JOIN / INNER JOIN -> only the common data
select ename, salary, dname
from emp1
inner join dept1
on emp1.deptno = dept1.deptno

-- ** common data ta hocche inner join..

--LEFT JOIN/ left outer join
--left a common ta ashbe shobar theke + left table theke uncommon data ashbe...

select ename, salary, dname
from emp1
left join dept1
on emp1.deptno = dept1.deptno

--RIGHT JOIN
select ename, salary, dname
from emp1
right join dept1
on emp1.deptno = dept1.deptno

--FULL OUTER JOIN/ FULL JOIN
--**The FULL OUTER JOIN returns all records when there is a match in left or right table records.
select ename, salary, dname
from emp1
full outer join dept1
on emp1.deptno = dept1.deptno

--SELF JOIN
--self join is a regular join, but the table is joined with itself.
select * from emp1

-- When you join a table with itself using a cross join (implicit join in the absence
 -- of a specific join condition), it produces a Cartesian product of the two tables,
  -- which means each row in the first table is combined with every row in the second table.
select a.ename, b.salary
from emp1 a, emp1 b


--*** real life -> inner join and left join....




		













































