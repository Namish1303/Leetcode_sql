# Write your MySQL query statement below
Select IF(max(rnk)<2,null,salary) as SecondHighestSalary from
(Select *, DENSE_RANK() OVER(Order By Salary desc) as rnk from Employee) s1
where rnk = 2