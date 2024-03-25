# Write your MySQL query statement below
Select ROUND(AVG(IF(d.order_date=d.customer_pref_delivery_date,1,0))*100,2) as immediate_percentage from
(Select customer_id,min(order_date) as min_date from Delivery d
group by customer_id) as D2,Delivery d
where d2.min_date = d.order_date and d2.customer_id = d.customer_id