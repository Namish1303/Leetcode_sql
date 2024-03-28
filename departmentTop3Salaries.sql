# Write your MySQL query statement below 
Select d.name as Department,
e1.name as Employee,
e1.salary as Salary
from Employee e1 inner join Department d
on e1.departmentId = d.id
where 3 > (Select Count(Distinct(e2.salary)) from Employee e2 where e2.salary > e1.salary and e1.departmentId = e2.departmentId)