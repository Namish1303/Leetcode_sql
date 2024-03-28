# Write your MySQL query statement below
Select sell_date, Count(Distinct(product)) as num_sold 
,Group_Concat(DISTINCT product order by product asc separator ",") as products
from Activities 
group by sell_date