# Write your MySQL query statement below
SELECT name,COALESCE(SUM(distance),0) as travelled_distance
FROM Rides AS  r 
RIGHT JOIN Users AS  u
    ON r.user_id = u.id
GROUP BY r.user_id
ORDER BY SUM(distance) DESC, name 
;
