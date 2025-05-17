---*** previous homework from union:
---*** akta clumn nie combine tai union use kora....
--homework/Exercise answer:
select city from customer
union
select city from supplier


--* including duplicates bollei union all dibo amra.....
--HW:
--Fetch  the  Country name and  their 2023 lowest Population number in the world ?


select * from world_population_23
--one way with sub query:
select country, pop2023
from world_population_23
where pop2023 = (select min(pop2023) from world_population_23)

--another way using top:
select top 1 country, pop2023
from world_population_23
order by pop2023

-------------------------------------------------------------------------------------
----***calculated column: jeta amra new column banacchi then calculation kore , ata real table a effect porbena cause amra query kore kortesi.....

-- new column add korle ata report a thaklo , query ar moddhe thaklo....
-- akhane fullname die akta calculated column banabo:
-- as ba = dieu declare korte pari new column
	----***** cast() a 1 ta argument, convert() a 3 ta argument jete pare.......
	---** convert() a 3 number argument a -> style is an optional parameter that 
	----** jokhon date function use korbo then convert use korbo
	        --specifies the formatting style,
	        -- which is often used for date and time conversions.
	 --*** cast() dile column name age then datatype abong as die ar convert a datatype age then column abong , die...
	 -- **convert() a 1 tar beshi argument jay ...ar cast aktai argument
SELECT TOP (100) 
[BusinessEntityID] ='My id number is ' + cast([BusinessEntityID] as varchar(20))
     ,[BusinessEntityIDNew] ='My id number is ' + convert(varchar(30), [BusinessEntityID])
	  ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,[Full Name]=FirstName +' '+ isnull(MiddleName,'') +' '+ LastName
	  --,fullName01 = FirstName + MiddleName + LastName
	  ---*** Case use korbo akhon condition check korte null ar name a:
	  ---*** Case dile END use korte hobe.......
	  -----**** Case ta onek jaygay use hobe sql server a.....
	  ,CaseFullName = case
	                      when MiddleName is null then FirstName+' '+LastName
					      else FirstName+' '+MiddleName+' '+LastName
					 end
	  , full_name_with_concat = concat(FirstName,' ', MiddleName,' ', LastName)
	  --coalesce hocche isnull ar moto same
	  , full_name_with_coalesce =FirstName +' '+ coalesce(MiddleName,'') +' '+ LastName

	  --*** concat dile null ar problem ta thakbena......
	  --* concat a int ar shathe int jabe ar varchar hole varchar ar shathe...
	  -- concat(FirstName, MiddleName, LastName) as newfull_name,
	   --[Full Name] =  FirstName +' ' +' '+ MiddleName +' '+ LastName
  FROM [AdventureWorks2017].[Person].[Person]

  --** akhane dekhno fullname a null value pacchi..... karon null ar shathe kichu ashle sheta null hoye jay..
  --*** atake avoid korbo amra.. tai isnull() function amra use korbo akhane.....atay 2ta argument jabe...
  ---- ai isnill() ta null value take replace kore dey.....


  -- caluculated column to make a commission from salary:
  SELECT TOP (1000) [employee_id]
      ,[first_name]
      ,[last_name]
      ,[salary]
	  ,[Commission of Salary] = salary * 0.5
      ,[commission_pct]
  FROM [Oracle_emptable].[dbo].[employees]


  --exmple of int and int ar char ar char:
  select 2 + 'A' -- *ata nibe na cause int ar char mixed conversion problem dekhabe
  select 'A' + 'B' -- ata nibe
  ---*** ar jonno conversion a amra cast() ar convert() use korbo.....

  --- akhon conversion ar jonno:
  select cast(2 as varchar(20)) + 'A'
  ---***  varchar a 8000 value porjonto neya jay....

  ----***** convert ar 3rd argument style:
  SELECT CONVERT(varchar, getdate(), 120) AS ConvertedDateUsingConvert;




