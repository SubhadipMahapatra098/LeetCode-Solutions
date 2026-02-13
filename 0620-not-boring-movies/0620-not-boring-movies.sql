# Write your MySQL query statement below
select id, movie, description, rating
from Cinema
WHERE MOD(id,2) = 1 
HAVING description NOT LIKE 'boring'
ORDER BY rating desc

;