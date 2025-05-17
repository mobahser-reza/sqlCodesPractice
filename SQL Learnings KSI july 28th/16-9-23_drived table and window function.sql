

--** derived table , sub query in from clause:
--** akhane akta column add kora jay abong condition a fela jay case die die ...
--**condtion: case, when then ... else.. end....

select * from (SELECT  [employee_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary],
	  SalaryGrade = case
	  when salary >= 20000 then 'Highest Salary'
	  when salary <= 10000 then 'Lowest Salary'
	  else 'Medium Salary'
	  end
      ,[commission_pct]
      ,[manager_id]
      ,[department_id]
  FROM [Oracle_emptable].[dbo].[employees]) a


  ----Window Function:
  row_number()   -- *aita akta numbering korbe row gular 
  rank()
  dense_rank()


  --ex:
  -- akhane tai from clause a akta virtual table hishebe use kore notun nam dbo table ar
  -- ***atai hocche derived table
  --*** akhane false result ashbe cause 2joner jodi aki salary hoy tahole sheta 3rd higst nile oita 3rd tai dibena row_num a...
  --*** rank() -> ata hocche protita row ar rank dekhay...
  --*** dense_rank() -> ata jekoyta pabe same ovabe ranking korbe....ata gap rakhena kono ranking a.. kono rank skip korbe na mainly
 --*****Choose between RANK() and DENSE_RANK() based on whether you want to leave gaps in the ranking 
 -- sequence for tied values (RANK()) or if you want a continuous sequence without gaps (DENSE_RANK()).

 --* ai dense_rank use korlei 4th 5th higest salary ta pawa jabe accurate result
 --*** dense_rank ai partition ai accurate department wise result ta ashe.....
  select * from (SELECT  [employee_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary],
	   --ROW_NUMBER() over (partition by d.department_name order by salary desc) row_num --*** ata claculated column tai ata first a recognize korte parena cause ata original table theke ashtese na tai oi from clause sub query use korbo
      --rank() over (partition by d.department_name order by salary desc) as rnk,
	  dense_rank() over (partition by d.department_name order by salary desc) as dense_rankno,
	  d.department_name
	  ,[commission_pct]
      ,e.[manager_id]
      ,e.[department_id]
  FROM [Oracle_emptable].[dbo].[employees] e
  inner join departments d on d.department_id = e.department_id) a
  where a.dense_rankno = 3 and a.department_name = 'IT'

  --*** akhon department wise jodi vag hoye bola hoy kon department a higest then amra **partition by use korbo

  ---*** other window function a: sum(), avg(), min(), max(), Lead(), Lag() agula dieu partition ar order die kora jay......








