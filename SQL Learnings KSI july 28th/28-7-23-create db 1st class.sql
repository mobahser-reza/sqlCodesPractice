--create database first class

create database world_population
use world_population

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [place]
      ,[pop1980]
      ,[pop2000]
      ,[pop2010]
      ,[pop2022]
      ,[pop2023]
      ,[pop2030]
      ,[pop2050]
      ,[country]
      ,[area]
      ,[landAreaKm]
      ,[cca2]
      ,[cca3]
      ,[unMember]
      ,[netChange]
      ,[growthRate]
      ,[worldPercentage]
      ,[density]
      ,[densityMi]
      ,[rank]
  FROM [world_population].[dbo].[world_population_23]

  select * from [dbo].[world_population_23]