# Write your MySQL query statement below
Select Round(sum(tiv_2016),2) as tiv_2016 from Insurance i
where tiv_2015 in (Select tiv_2015 from Insurance group by tiv_2015 having count(*)>1)
and (lat,lon) in (Select lat,lon from Insurance group by lat,lon having count(*)<=1)
