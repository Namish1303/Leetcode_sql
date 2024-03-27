# Write your MySQL query statement below
Select "Low Salary" as category, sum(income<20000) as accounts_count from accounts
union
Select "Average Salary" as category, sum(income between 20000 and 50000) as accounts_count from accounts
union
Select "High Salary" as category, sum(income>50000) as accounts_count from accounts