# Write your MySQL query statement below
SELECT e.employee_id,
    e.name,
    COUNT(r.reports_to) AS reports_count,
    ROUND(AVG(r.age),0) AS average_age
FROM Employees AS e
JOIN Employees AS r
    ON e.employee_id = r.reports_to
GROUP BY r.reports_to
ORDER BY e.employee_id ASC
;