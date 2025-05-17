---Module_1 Home work-3
  --Q1: List out the country name, and the population for 2022 and 2023 from the world Population
  --table, rename (your choice) the columns for 2022 and 2033 population columns
 SELECT pop2022 as population_2022, pop2023 as population_2023 from [dbo].[world_population_23]
  --Q2: List out all the country whose name starts with “B”
   select * from [dbo].[world_population_23] where country like  'B%'
  --Q3: List out the top ten countries in order by max population 2022 
  select top 10 country
   from world_population_23
   order by pop2022 desc

  SELECT TOP (10)* FROM [dbo].[world_population_23] where max(pop2022) 
  --Q4: List all the countries their rank between 1 and 15
SELECT * FROM [dbo].[world_population_23] where rank between 1 and 15
  --Q5: Fetch all countries with less than one growth rate. 
SELECT * FROM [dbo].[world_population_23] where growthRate<1

  --Q6: List out all the countries whose name end with “a” and the Population
  ------is more than Billions
 SELECT * FROM [dbo].[world_population_23] where country like  '%a'and pop2023>1000000000

  --Q7: How many people live per square kilometer in China, India, Bangladesh, USA, and Canada
SELECT density,country
FROM [dbo].[world_population_23]
WHERE country IN ('China', 'India', 'Bangladesh', 'United States','Canada')
