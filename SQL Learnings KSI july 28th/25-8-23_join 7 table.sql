--** self join , akhane employees table a king ar kono manger id nai tai she hocche companyr main director...

-- akhane tai amra employee id ar manager id nie self join korbo...
--SELF JOIN
select  e1.employee_id, e2.manager_id
from employees e1, employees e2
where e1.employee_id <> e2.manager_id

--CROSS JOIN  --> just multiply hobe row gulo
select * 
from employees
cross join departments

-- to count all rows in a table...
select count (*) from employees
-- abar amra database diagram ta banabo db te jeye then db diagram theke...
-- ** drop table die drop dile shob reference die create ar por drop dile ar drop nibe na tokhon cascade use korte hobe..


--***database diagram thekei amra ERD ta akbo.....
--** jodi connection na pawa jay digram a tahole oitar pk ar fk run hoynai....
--*** pf fk chinbo kivabe? table ar coulmns othoba keys folder theke....
--pk ar ta  1 ar ulta side a many , tar mane 1 to many relation ...
--* jei koyta table nile connect hobe shei koyta table nibo.....
--***amader connection ta dekhe dekhe then kaj ta korte hobe....
---*** jei koyta table join kora lagbe ovabe korbo....
--- 1kjon mnager ar under a onekgula employee aache tai akhane nijertay self join employee table a...



--now JOIN many tables.....


select 
		first_name,
		last_name,
		e.job_id,
		e.department_id,
		department_name,
		city,
		street_address,
		country_name,
		region_name,
		j_h.start_date,
		j_h.end_date,
		j.job_title,
		j.max_salary
from employees e
inner join departments d on d.department_id = e.department_id
inner join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id
join job_history j_h on j_h.department_id = d.department_id 
inner join jobs j on j.job_id = e.job_id






























































