-- Write your PostgreSQL query statement below

SELECT *
FROM Patients
WHERE conditions ~ '(^| )DIAB1[0-9a-zA-Z_.-]*'