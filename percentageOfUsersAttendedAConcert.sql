Select contest_id,Round(100 * COUNT(r.user_id)/(Select Count(*) from Users f),2) as percentage from Users u right join Register r
on u.user_id=r.user_id
group by contest_id
order by percentage desc, contest_id;