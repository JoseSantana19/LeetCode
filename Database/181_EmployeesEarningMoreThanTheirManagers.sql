SELECT E1.name AS Employee
FROM Employee AS E1
JOIN Employee AS E2
ON E1.managerId = E2.Id
WHERE E1.salary > E2.salary
