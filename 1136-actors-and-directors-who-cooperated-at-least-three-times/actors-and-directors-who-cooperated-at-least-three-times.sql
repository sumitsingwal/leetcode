-- Write your PostgreSQL query statement below
SELECT actor_id, director_id
FROM (SELECT COUNT(*) AS sd ,actor_id, director_id  FROM ActorDirector GROUP BY actor_id,director_id)
WHERE sd > 2