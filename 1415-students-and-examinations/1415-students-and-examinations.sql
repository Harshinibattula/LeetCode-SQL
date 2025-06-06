-- # Write your MySQL query statement below
select stu.student_id,stu.student_name,sub.subject_name,count(e.subject_name) as attended_exams 
from Students as stu 
cross join Subjects as sub 
left join Examinations as e 
on e.student_id=stu.student_id and e.subject_name=sub.subject_name
group by subject_name,student_name,student_id
order by student_id,sub.subject_name

