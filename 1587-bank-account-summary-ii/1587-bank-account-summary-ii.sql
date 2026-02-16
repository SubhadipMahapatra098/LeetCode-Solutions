# Write your MySQL query statement belo
SELECT u.name, 
SUM(amount) AS balance
FROM Users AS u
INNER JOIN Transactions AS t
    ON u.account= t.account

GROUP BY t.account
HAVING SUM(amount) > 10000
;