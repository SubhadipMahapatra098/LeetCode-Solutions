# Write your MySQL query statement below
SELECT employee_id,
    COALESCE (CASE 
        WHEN employee_id % 2 = 1  AND name  NOT LIKE 'M%'  THEN salary
        END,0) AS bonus
FROM Employees
ORDER BY employee_id
;