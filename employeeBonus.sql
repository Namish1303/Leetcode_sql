# Write your MySQL query statement below
Select e.name,b.bonus from Employee as e left join Bonus as b 
on e.empID = b.empId 
where b.bonus < 1000 or b.bonus is NULL;