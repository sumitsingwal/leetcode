#Solution 1

SELECT name as Employee
FROM Employee e1
WHERE salary > (select salary from Employee where id = e1.managerId)

#Solution 2

SELECT e1.name as Employee
FROM Employee e1
LEFT JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
