-- # Write your MySQL query statement below
-- select x,y,z,
-- case 
-- when x+y>z and y+z>x and z+x>y
-- then 'Yes'
-- else 
-- 'No'
-- end as triangle
-- from Triangle
SELECT *, 
  IF(x + y > z AND y + z > x AND z + x > y, 'Yes', 'No') AS triangle 
FROM Triangle