# Write your MySQL query statement below
Select id, count(*) as num from
(Select requester_id as id from RequestAccepted
union all
Select accepter_id as id from RequestAccepted) s1
group by id
order by num desc
limit 1