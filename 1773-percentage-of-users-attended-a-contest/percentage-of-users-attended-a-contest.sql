-- Write your PostgreSQL query statement below
WITH TotalUser as (
    SELECT COUNT(user_id)
    FROM Users
)
SELECT 
    rgt.contest_id,
    ROUND((COUNT(rgt.user_id)*100.0)/(SELECT * FROM TotalUser), 2) AS percentage
FROM Users as usr
LEFT JOIN Register as rgt
ON usr.user_id = rgt.user_id
WHERE rgt.contest_id IS NOT NULL
GROUP BY rgt.contest_id
ORDER BY percentage DESC, rgt.contest_id
