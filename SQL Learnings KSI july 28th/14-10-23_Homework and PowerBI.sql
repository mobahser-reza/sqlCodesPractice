--homework from prior mont year


select datediff(yyyy, 0, getdate())
----*****IMP: This calculates the difference in years between
 --the date 0 (1900-01-01) and the current date (GETDATE()). The DATEDIFF function,
  --when used with yyyy, returns the count of boundaries crossed in terms of years.
  --The value 0 in the date part is considered the base date, and the GETDATE() function returns
  -- the current date and time.The result you're seeing, 123, indicates the number of year boundaries
  --crossed between the year 1900 and the current year.

--So, if you run this query in 2023, you'll get 123 because there are 123 full years between
-- 1900 and 2023. If you run it in a different year, the result will vary accordingly.
select datediff(mm, 0, getdate())

select datediff(yyyy, getdate(),0 )----- last ar date theke ager date minus kore...
select dateadd(yyyy, datediff(yyyy, 0, getdate()) , 0)----- current year ar first month date...
select dateadd(mm, datediff(mm, 0, getdate()) , 0)------ current month ar first date...
select dateadd(yyyy, datediff(yyyy, 0, getdate()) -1 , 0)  --  ager year ar 1st month
select dateadd(yyyy, -1, dateadd(yyyy, datediff(yyyy, 0, getdate()) , 0)) --- ager year ar 1st month...

select dateadd(mm, datediff(mm, 0, getdate())-1 , 0) ---- ager month ar 1 tarikh...

-----***** amader amon code die dite pare then amra SSRS die report banay dite pari......

select   dateadd(mm, datediff(mm, 0, getdate()) -1,0) --start date previous month/ prior month start : -1 die ager month
----****ms/ millesecond die bad dile ager date ta chole ashbe:
select  dateadd(ms, -3, dateadd(mm, datediff(mm, 0, getdate()),0))  --end date previous month/ prior month end

---- now to convert it to date format:

select  convert(date,dateadd(mm, datediff(mm, 0, getdate()) -1,0)  ) 
select convert(date, dateadd(ms, -3, dateadd(mm, datediff(mm, 0, getdate()),0))  ) 


-------------------------------------------------------------------------------------------------------
---***PowerBI****
--10 ta table nie kaj korbo amra.... 10 ta xl table deya ......

create database DWPowerBI

----*** amra xl theke data gulo import kore nie ashbo ai database a ...
----*** beshi vitore drive ar vitor nile error dekhabe open korte gele....
----****xlsx ta onek time a kaj korena, import korte gele tai xls a convert kore nibo....
------convert it to xls from xslx -> source micrsoft excel 97- 2003.....
--        ar destination holo Microsoft OLE DB Provider for sql.....
--------------------------------------------------------

----**** amra null value guloke delete kore dibo......
--query to delte all null values here:
delete from Product_Categories
where [CategoryName] is null

----**** NULL check:
select * from Product_Categories 
where CategoryName is null

--calender ar null value gulau remove korlam....
delete from Calendar
where Date is null

-----**** powerbi new kore download korle agerta change kore auto download korbe notun instance nie korbena
----powerbi ar jonno 8gb lagbe...
---pore powerbi pro te gele service a gele then 9 dollar/month pay kora lage...
----school/business/office mail die use kora lagbe signup korte powerbi a login korle... 60 days free trial dibe..






























































































