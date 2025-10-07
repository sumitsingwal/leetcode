-- Write your PostgreSQL query statement below
SELECT Pro.project_id, ROUND(AVG(Emp.experience_years), 2) as average_years
FROM Project as Pro
LEFT JOIN Employee as Emp
ON Pro.employee_id = Emp.employee_id
GROUP BY Pro.project_id