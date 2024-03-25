# Write your MySQL query statement below
Select product_id,year as first_year,quantity,price from Sales
where (year,product_id) in (Select min(year),product_id from Sales group by product_id )