# Write your MySQL query statement below
DELETE p 
FROM Person p, Person q
WHERE p.id>q.id AND q.email = p.email