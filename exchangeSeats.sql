# Write your MySQL query statement below
Select case
when s.id %2 !=0 and s.id = (Select Count(*) from Seat) then s.id
when s.id %2 =0 then s.id -1
else s.id+1
end as id, student
from seat as s 
order by id