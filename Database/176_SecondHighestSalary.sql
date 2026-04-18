SELECT MAX(salary) AS SecondHighestSalary
FROM (
  SELECT salary,
  RANK() OVER (ORDER BY salary DESC) AS rn
  FROM employee
)
WHERE rn <> 1
