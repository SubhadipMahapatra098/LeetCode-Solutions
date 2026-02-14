# Write your MySQL query statement below
SELECT customer_id
FROM Customer
CROSS JOIN Product
GROUP BY customer_id
HAVING COUNT(DISTINCT Customer.product_key) = 
     (SELECT COUNT(*)
        FROM Product );
