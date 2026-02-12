# Write your MySQL query statement below
SELECT user_id, name, mail
from Users
WHERE mail regexp '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$'
AND mail like BINARY '%@leetcode.com'
;