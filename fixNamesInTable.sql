# Write your MySQL query statement below
Select user_id, CONCAT(UPPER(LEFT(name,1)),LOWER(Right(name,LENGTH(name)-1))) as name 
from users
order by user_id