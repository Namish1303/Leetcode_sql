# Write your MySQL query statement below
Select 
e1.employee_id,e1.name,count(f.employee_id) as reports_count,
round(avg(f.age)) as average_age 
from Employees f join Employees e1
on e1.employee_id = f.reports_to
group by employee_id
order by employee_id