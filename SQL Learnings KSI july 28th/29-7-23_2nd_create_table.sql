--2nd class create table

create database KSIdataresearch

use KSIdataresearch

--table create

create table KSItable
( id int,
  name varchar(20),
  salary money
  )
  --to see all data
select *
from KSItable

--insert data into table

insert into KSItable values(1, 'Reza', 2000)
insert into KSItable values(2, 'Akash', 3000)
insert into KSItable values(3, 'Akib', 4000)
insert into KSItable values(4, 'Akib', 4000)