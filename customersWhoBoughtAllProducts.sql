# Write your MySQL query statement below
Select customer_id from Customer c
group by customer_id
having COUNT(DISTINCT c.product_key) in (Select COUNT(*) from Product)

