# Write your MySQL query statement below
Select s.student_id,s.student_name,sub.subject_name, count(e.student_id) as attended_exams
from Students as s cross join Subjects as sub left join Examinations as e on e.student_id = s.student_id and e.subject_name = sub.subject_name
group by s.student_id, s.student_name, sub.subject_name
order by s.student_id, sub.subject_name asc;