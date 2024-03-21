# Write your MySQL query statement below
Select s.user_id, avg(if(c.action='confirmed',1,0)) as confirmation_rate 
from Signups as s left join Confirmations as c
on s.user_id = c.user_id
group by s.user_id