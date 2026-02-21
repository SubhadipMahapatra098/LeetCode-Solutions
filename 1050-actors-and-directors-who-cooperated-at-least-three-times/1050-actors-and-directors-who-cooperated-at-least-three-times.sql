# Write your MySQL query statement below
SELECT actor_id,
    director_id
FROM ActorDirector

GROUP BY actor_id,director_id
HAVING COUNT(actor_id) >= 3 AND count(actor_id) = count(director_id) 
;
