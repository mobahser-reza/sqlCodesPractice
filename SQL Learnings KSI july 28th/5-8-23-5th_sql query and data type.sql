--between and dile --- string ar khetre name gula a-b-c avabe dekhabe range ar moddhe
--SELECT [employee_id]
--      ,[first_name]
--      ,[last_name]
--      ,[email]
--      ,[phone_number]
--      ,[hire_date]
--      ,[job_id]
--      ,[salary]
--      ,[commission_pct]
--      ,[manager_id]
--      ,[department_id]
--  FROM [Oracle_emptable].[dbo].[employees]
  --where first_name between 'Alexander' and 'Curtis'
  --where first_name in('Alexander', 'Curtis')

  -- now like operator hocche kotojon amra a die shuru ba b die amon ar jonno use korbo

  --where first_name like 'Da%'
  --where first_name like '%D%'
  --where first_name like '%D'
  --where first_name like '%A'
  --where first_name like '%ea'

  -- ***sql server a case sensitive na

  -- jehane salary more than 10000

  --where salary > 15000
  --more than and equal
  --where salary >= 24000
   --where salary <= 3000
   --not equals holo-
   --where salary <> 17000
   --more than and less then
   --where salary > 10000
   --and salary < 20000
   --null ar khetere is null hoy ba is not null
   --where commission_pct is not NULL
   --where first_name = 'Steven' and commission_pct is null
   --and ar or 2tai use korte parbo
   --where last_name = 'King' 
   --or salary = 17000.00
   --order by asc ba desc deya jabe, desc hocche boro theke choto
   --ar asc hocche choto theke boro
   -- order by ta always last a jay
   --where first_name = 'Steven'
   --order by salary asc
   -- distinct dile hocche onekgula thakle akta hoye ashe mane unique vabe

   select distinct * 
   from employees
   where first_name = 'Steven'

   --numeric- int, decimal, float, double...
   --character- char, varchar, nvarchar
   --date and time- date, datetime, time, year
   --json/xml
   -- varchar ar belay jotogula nei totogula nibe ar bakigula relaese kore dibe
   -- nvarchar hocche international/int. language ar jonno use korbo
   --akhane 1 byte ar jaygay 2 byte use hoy


   create table DataType
   (
   id int,
   last_name varchar(8000),
   First_name nvarchar(4000),
   Middle_name char(1),
   salary money,
   numbers float,
   calDate date,
   commision decimal(4,2)



   )





  --drop table tablename die table ta delete kore dite pari

  -- je koyta data nite parbe oi koytar moddhei nibe char a...
  -- varchar nite parbe 8000 data
  -- nvarchar ney 4000 data
    insert into DataType values(1, 'Reza', 'Mobasher', 'N', 20000, 450, '2023-11-4', 3.20)
    insert into DataType values(2, 'Mazda', 'Nishat', 'M', 40000, 550, '2023-11-10', 99.50) 
	insert into DataType values(3, 'Porsh', 'Reza', 'M', 80000, 550, '2023-11-1', 99.99) 
	insert into DataType values(4, 'Rover', 'Nishan', 'F', 90993939000, 5592929290, '2023-11-1', 99.99) 
	insert into DataType values(4, 'BMW', 'Nishan', 'F', 909939.39000, 559.2929290, '2023-11-1', 99.99) 
	 --1 ar beshi nile error dekhabe amon: String or binary data would be truncated.
	 	--insert into DataType values(6, 'BMW', 'Nishan', 'Fh', 909939.39000, 559.2929290, '2023-11-1', 99.99) 
	 




	select * from DataType
	-- int ta akta range porto data ney, ar float ar theke beshi ney...









