# Write your MySQL query statement below
select id from Weather as w
where temperature>(select temperature from Weather where datediff(w.recorddate,recorddate)=1);
;