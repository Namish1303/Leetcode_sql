# Write your MySQL query statement below
Select activity_date as day,COUNT(DISTINCT(user_id)) as active_users from Activity
where DATE_ADD(activity_date,INTERVAL 30 DAY) > '2019-07-27' and activity_date <= '2019-07-27'
group by day


