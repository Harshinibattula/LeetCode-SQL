# Write your MySQL query statement below
select user_id , concat( ucase(substring(name,1,1)), lcase(substring(name,2))) as name 
from Users
order by user_id;
