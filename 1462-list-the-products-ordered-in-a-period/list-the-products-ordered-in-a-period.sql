SELECT p.product_name, sum(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date LIKE '%-02-%' 
GROUP BY p.product_name, YEAR(o.order_date)
HAVING unit>=100;

