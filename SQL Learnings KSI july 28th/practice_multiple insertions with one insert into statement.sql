/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Name]
      ,[address]
      ,[Gender]
  FROM [practice].[dbo].[Customer]

  insert into Customer(id, Name, address, Gender)
  values
  (6, 'john_doe', 'mugda', 'M'),
(7, 'jane_smith', 'jane', 'M'),
(8, 'bob_jackson', 'bob', 'F');


  insert into Customer(id, Name, address, Gender)
  values
  (9, 'john_doea', 'mugdar', 'F'),
(10, 'jane_smitha', 'janet', 'M'),
(11, 'bob_jacksona', 'bobt', 'F')


--------------***********multiple insertions with one.......*******