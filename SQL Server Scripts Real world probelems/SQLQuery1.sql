select top 200 * from SuperStore_Sales_Dataset


--#1. What percentage of total orders were shipped on the same date?
select count(*) as TotalOrders,
sum(case when Order_Date = Ship_Date 
then 1
 else 0 
end)
as sameShippedOrderDate,
round(cast(sum(case when Order_Date = Ship_Date 
then 1
else 0 
end) as float)/ count(*) * 100, 2)  as TotalOrderPercentage
from SuperStore_Sales_Dataset

