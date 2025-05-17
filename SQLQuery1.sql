with new_table as
(select[Order_No] from [dbo].[Maintain_Purchase_Orders_1739354250])
select * from new_table

select * from [dbo].[Maintain_Purchase_Orders_1739354250]
where year([Ordered]) = '2017'


SELECT * FROM [dbo].[Maintain_Purchase_Orders_1739354250]  
WHERE YEAR(CAST([Ordered] AS DATE)) = 2017;
