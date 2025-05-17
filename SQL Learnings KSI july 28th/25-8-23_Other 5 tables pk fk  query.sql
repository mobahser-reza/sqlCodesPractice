/* 
    1) Create five tables such as regions, Jobs, countries, Job_history, Locations
    2) Execute each table see them separately and check they are running 
    3) Create a Relationship between the tables.

*/


--Select * from regions
--Select * from Jobs
--Select * from countries
--Select * from Job_history
--Select * from Locations


CREATE TABLE regions
   ( region_id int Primary key
   CONSTRAINT region_id_nn NOT NULL 
   , region_name VARCHAR(25) 
   );
----------------insert data into the REGIONS table

INSERT INTO regions VALUES ( 1, 'Europe' );
INSERT INTO regions VALUES ( 2, 'Americas');
INSERT INTO regions VALUES ( 3, 'Asia');
INSERT INTO regions VALUES ( 4, 'Middle East and Africa');
-------------------------------------------
CREATE TABLE job_history
   ( employee_id int 
   , start_date DATE
   , end_date DATE
   , job_id VARCHAR(10)
   , department_id int
   ) ;
--------insert data into the JOB_HISTORY table
       
INSERT INTO job_history VALUES (102, '13-JAN-1993', '24-JUL-1998', 'IT_PROG', 60);
INSERT INTO job_history VALUES (101, '21-SEP-1989', '27-OCT-1993', 'AC_ACCOUNT', 110);
INSERT INTO job_history VALUES (101, '28-OCT-1993', '15-MAR-1997', 'AC_MGR', 110);
INSERT INTO job_history VALUES (201, '17-FEB-1996','19-DEC-1999', 'MK_REP', 20);
INSERT INTO job_history VALUES (114, '24-MAR-1998', '31-DEC-1999', 'ST_CLERK', 50);
INSERT INTO job_history VALUES (122, '01-JAN-1999', '31-DEC-1999', 'ST_CLERK', 50);
INSERT INTO job_history VALUES (200, '17-SEP-1987', '17-JUN-1993', 'AD_ASST', 90);
INSERT INTO job_history VALUES (176,'24-MAR-1998', '31-DEC-1998', 'SA_REP', 80);
INSERT INTO job_history VALUES (176, '01-JAN-1999', '31-DEC-1999', 'SA_MAN', 80);
INSERT INTO job_history VALUES (200, '01-JUL-1994', '31-DEC-1998', 'AC_ACCOUNT', 90);
---------------------------------------------------------------



   CREATE TABLE jobs
   ( job_id varchar(10) Primary key
   , job_title VARCHAR(35) NOT NULL
   , min_salary money
   , max_salary money
   ) ;
---------------------------insert data into the JOBS table
INSERT INTO jobs VALUES ( 'AD_PRES', 'President', 20000, 40000);
INSERT INTO jobs VALUES ( 'AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO jobs VALUES ( 'AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO jobs VALUES ( 'FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO jobs VALUES ( 'FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO jobs VALUES ( 'AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO jobs VALUES ( 'AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO jobs VALUES ( 'SA_MAN', 'Sales Manager', 10000, 20000);
INSERT INTO jobs VALUES ( 'SA_REP', 'Sales Representative', 6000, 12000);
INSERT INTO jobs VALUES ( 'PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO jobs VALUES ( 'PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO jobs VALUES ( 'ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO jobs VALUES ( 'ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO jobs VALUES ( 'SH_CLERK', 'Shipping Clerk', 2500, 5500);
INSERT INTO jobs VALUES ( 'IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO jobs VALUES ( 'MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO jobs VALUES ( 'MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO jobs VALUES ( 'HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO jobs VALUES ( 'PR_REP', 'Public Relations Representative', 4500, 10500);

---------------------------------------------------------------
   CREATE TABLE locations
   ( location_id int primary key
   , street_address VARCHAR(40)
   , postal_code VARCHAR(12)
   , city VARCHAR(30) NOT NULL
   , state_province VARCHAR(25)
   , country_id CHAR(2)
   ) ;

   ----insert data into the LOCATIONS table       
INSERT INTO locations VALUES ( 1000 , '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');
INSERT INTO locations VALUES ( 1100 , '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');
INSERT INTO locations VALUES ( 1200 , '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO locations VALUES ( 1300 , '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');
INSERT INTO locations VALUES ( 1400 , '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO locations VALUES ( 1500 , '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO locations VALUES ( 1600 , '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO locations VALUES ( 1700 , '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO locations VALUES ( 1800 , '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations VALUES ( 1900 , '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO locations VALUES ( 2000 , '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');
INSERT INTO locations VALUES ( 2100 , '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO locations VALUES ( 2200 , '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO locations VALUES ( 2300 , '198 Clementi North', '540198', 'Singapore', NULL, 'SG');
INSERT INTO locations VALUES ( 2400 , '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO locations VALUES ( 2500 , 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO locations VALUES ( 2600 , '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO locations VALUES ( 2700 , 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO locations VALUES ( 2800 , 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO locations VALUES ( 2900 , '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO locations VALUES ( 3000 , 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO locations VALUES ( 3100 , 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO locations VALUES ( 3200 , 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');
       
--------------------------------------------------------------
   CREATE TABLE countries 
   ( country_id CHAR(2) Primary key 
   , country_name VARCHAR(40) 
   , region_id int
   ) 

  ----- insert data into the COUNTRIES table
INSERT INTO countries VALUES ( 'IT', 'Italy', 1 );
INSERT INTO countries VALUES ( 'JP', 'Japan', 3 );
INSERT INTO countries VALUES ( 'US', 'United States of America', 2 );
INSERT INTO countries VALUES ( 'CA', 'Canada', 2 );
INSERT INTO countries VALUES ( 'CN', 'China', 3 );
INSERT INTO countries VALUES ( 'IN', 'India', 3 );
INSERT INTO countries VALUES ( 'AU', 'Australia', 3 );
INSERT INTO countries VALUES ( 'ZW', 'Zimbabwe', 4 );
INSERT INTO countries VALUES ( 'SG', 'Singapore', 3 );
INSERT INTO countries VALUES ( 'UK', 'United Kingdom', 1 );
INSERT INTO countries VALUES ( 'FR', 'France', 1 );
INSERT INTO countries VALUES ( 'DE', 'Germany', 1 );
INSERT INTO countries VALUES ( 'ZM', 'Zambia', 4 );
INSERT INTO countries VALUES ( 'EG', 'Egypt', 4 );
INSERT INTO countries VALUES ( 'BR', 'Brazil', 2 );
INSERT INTO countries VALUES ( 'CH', 'Switzerland', 1 );
INSERT INTO countries VALUES ( 'NL', 'Netherlands', 1 );
INSERT INTO countries VALUES ( 'MX', 'Mexico', 2 );
INSERT INTO countries VALUES ( 'KW', 'Kuwait', 4  );
INSERT INTO countries VALUES ( 'IL', 'Israel', 4 );
INSERT INTO countries VALUES ( 'DK', 'Denmark', 1 );
INSERT INTO countries VALUES ( 'HK', 'HongKong', 3 );
INSERT INTO countries VALUES ( 'NG', 'Nigeria', 4 );
INSERT INTO countries VALUES ( 'AR', 'Argentina', 2 );
INSERT INTO countries VALUES ( 'BE' , 'Belgium', 1 );



















------------------------------------alter the table to add foreign key

------------------------------
alter table employees
add foreign key ( job_id)references Jobs (job_id)
-------------------------------
alter table departments add foreign key(Location_id) references locations (location_id)
---------------
alter table countries add foreign key (region_id) references regions (region_id)
-----------------
alter table locations add foreign key (country_id) references countries (country_id)
------------------------
alter table Job_History add foreign key (job_id) references jobs (job_id)
------------------------
alter table job_history add foreign key (department_id) references departments (department_id)






