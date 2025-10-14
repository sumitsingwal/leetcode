-- Write your PostgreSQL query statement below
SELECT EmpUI.unique_id, Emp.name
FROM Employees as Emp
LEFT JOIN EmployeeUNI as EmpUI
ON Emp.id = EmpUI.id
