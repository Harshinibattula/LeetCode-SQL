# Write your MySQL query statement below
-- select id from Weather as w
-- where temperature>(select temperature 
-- from Weather 
-- where datediff(w.recorddate,recorddate)=1);

select w1.id from Weather w 
join Weather w1 on w1.recorddate = date_add(w.recorddate, interval 1 day)
where w1.temperature> w.temperature ;
