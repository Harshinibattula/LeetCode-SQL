SELECT CASE
           WHEN COUNT(DISTINCT Salary) < 2 THEN NULL
           ELSE (
               SELECT DISTINCT Salary
               FROM Employee
               ORDER BY Salary DESC
               LIMIT 1 OFFSET 1
           )
       END AS SecondHighestSalary
FROM Employee;



