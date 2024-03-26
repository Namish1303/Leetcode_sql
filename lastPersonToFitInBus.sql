# Write your MySQL query statement below
Select person_name from Queue q
where 1000 >= (Select Sum(weight) from queue where q.turn >= turn)
order by turn desc
Limit 1;