SELECT p.product_Name,s.year,s.price 
from Sales as s
left join product p 
on s.product_id = p.product_id
