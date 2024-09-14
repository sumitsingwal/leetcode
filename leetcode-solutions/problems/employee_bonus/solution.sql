# Write your MySQL query statement below
SELECT emp.name, bon.bonus
FROM EMPLOYEE emp
LEFT JOIN Bonus bon
on emp.empId = bon.empId
WHERE bon.bonus < 1000 or bon.bonus is null
