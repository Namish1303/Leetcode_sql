# Write your MySQL query statement below
Select query_name, ROUND(AVG(rating/position),2) as quality,
ROUND(100 * SUM(IF(rating <3,1,0))/COUNT(rating),2) as poor_query_percentage
from Queries q
where query_name is not NULL
group by query_name