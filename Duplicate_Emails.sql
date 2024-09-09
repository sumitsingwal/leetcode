SELECT email as Email
FROM (SELECT email, COUNT(email) as Total FROM Person GROUP BY email) AS E1
WHERE Total > 1
