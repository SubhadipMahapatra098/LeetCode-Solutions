# Write your MySQL query statement below
SELECT name,bonus
from Employee as e
LEFT join Bonus as b
on  e.empId = b.empId
WHERE  bonus < '1000' or bonus is null
;