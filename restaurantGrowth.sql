# Write your MySQL query statement below
Select visited_on,
(Select Sum(amount) from customer where visited_on between DATE_SUB(c.visited_on,interval 6 day) and c.visited_on) as amount,
Round((Select Sum(amount)/7 from customer where visited_on between DATE_SUB(c.visited_on,interval 6 day) and c.visited_on),2) as average_amount
from customer c
where visited_on >= (Select DATE_ADD(Min(visited_on),interval 6 day) from customer)
group by visited_on;