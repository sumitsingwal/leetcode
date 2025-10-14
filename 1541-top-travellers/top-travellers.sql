-- Write your PostgreSQL query statement below
SELECT usr.name,
CASE 
    WHEN SUM(rid.distance) IS NOT NULL THEN SUM(rid.distance) 
    ELSE
        0
    END as travelled_distance
FROM Users as usr
LEFT JOIN Rides as rid
ON usr.id = rid.user_id
GROUP BY rid.user_id, usr.name
ORDER BY travelled_distance DESC, name ASC