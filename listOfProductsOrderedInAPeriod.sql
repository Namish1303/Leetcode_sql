# Write your MySQL query statement below
Select product_name, SUM(unit) as unit from Products p, Orders o
where p.product_id = o.product_id and MONTH(o.order_date) = 2 and YEAR(order_date) = 2020
group by p.product_id
having SUM(unit) >= 100