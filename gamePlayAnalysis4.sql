# Write your MySQL query statement below
Select ROUND(COUNT(DISTINCT (player_id))/(Select COUNT(DISTINCT(player_id)) from Activity),2) as fraction from Activity 
where (player_id,DATE_SUB(event_date,INTERVAL 1 Day)) in (Select player_id , min(event_date) as first_login from Activity group by player_id)