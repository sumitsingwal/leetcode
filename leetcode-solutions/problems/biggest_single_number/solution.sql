# Write your MySQL query statement below
SELECT MAX(num) as num
FROM (
SELECT num, COUNT(num) as total
FROM MyNumbers
GROUP BY num
) as T
WHERE total = 1