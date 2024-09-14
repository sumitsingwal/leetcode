# Write your MySQL query statement below
SELECT w2.id
FROM Weather w2, Weather w1
WHERE DATEDIFF(w2.recordDate, w1.recordDate) = 1 AND w2.temperature > w1.temperature;
