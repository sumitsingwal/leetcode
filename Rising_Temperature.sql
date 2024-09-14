#Solution 1

SELECT w2.id
FROM Weather w2
WHERE w2.recordDate > (SELECT w1.recordDate FROM Weather w1 WHERE DATE_ADD(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate AND w2.temperature > w1.temperature);

#Solution 2

SELECT w2.id
FROM Weather w2, Weather w1
WHERE DATEDIFF(w2.recordDate, w1.recordDate) = 1 AND w2.temperature > w1.temperature;
