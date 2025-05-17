
--Write a query displaying the First Name, Last Name, and their regions from 
--     HR schema Database, Show only those people living in America, converted
--     first name in upper case and last name in lower case

select upper(first_name) as first_name,
		lower(last_name) as last_name,
		region_name
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id
where region_name = 'Americas'


--Display the country name, city, and number of departments where the department 
--     has more than 5 employees.
select country_name,
		city,
		count(d.department_id) as no_of_dept
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
group by country_name, city
having count(e.employee_id) > 5


--Find out the number of employee's duplicate last names who are living in 
--     Europe
select last_name,
		count(e.employee_id) as no_of_employees,
		region_name
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id
where region_name = 'Europe'
group by last_name, region_name
having count(employee_id) > 1




--Fetch those employees who are join after 1998 and living in the United Kingdom
select *
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id
where year(hire_date) > '1998' and country_name = 'United Kingdom'
--Fetch those employees whose employment was between 1997 to 1999
select *
from employees e
where year(hire_date) between '1997' and '1999'
---> 69 rows...






