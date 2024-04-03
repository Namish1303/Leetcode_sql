# Write your MySQL query statement below
(Select u.name as results from MovieRating m, Users u
where u.user_id = m.user_id 
group by m.user_id
order by COUNT(rating) desc, u.name
limit 1)
union all
(Select title as results from MovieRating r, Movies mr
where r.movie_id = m.movie_id and MONTH(created_at)=2 and YEAR(created_at) = 2020
group by r.movie_id
order by AVG(rating) desc,m.title
limit 1)




