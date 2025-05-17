---------sql commands

--ddl-> data definition language -> create, alter, drop, truncate
--dml-> data manipulation language -> select, insert, update, delete, merge..
--dcl-> data control language -> grant, revoke


-- now practice it: 

Create table commands 
  ( 
     Id  int,
     Name varchar(20),
     salary money,
	 gender char(1)
 )


 insert into commands  values (1, 'john', 20000, 'M')
insert into commands  values (2, 'Don', 50000, 'M')
insert into commands  values (3, 'Sara', 80000, 'F')
insert into commands  values (4, 'Mike', 20000, 'M')
insert into commands  values (5, 'Mohammed', 50000, 'M')
insert into commands  values (6, 'Mishell', 80000, 'F')


Drop table commands

select * from commands

--all rows will be deleted
truncate table commands


alter table commands add sex varchar(32)


alter table commands drop column sex

drop table commands

select * from commands

-- update query:
update commands 
		set salary = 90000
		where id = 3

		-- add 10000 salary for all rows/ users...
update commands 
		set salary += 10000

update commands
		set salary = salary + 10000
		where Id between 1 and 6 

		--delete column from the row of Mike ...
delete from commands 
		where id = 3
select * from commands

/*all rows will be deleted */
delete from commands


--GRANT - allow users access privileges to the database
--REVOKE - withdraw users access privileges given by using the GRANT command





















