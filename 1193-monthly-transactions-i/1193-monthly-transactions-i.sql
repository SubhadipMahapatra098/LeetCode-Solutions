# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    count(state) as trans_count,
    
    SUM(CASE 
            WHEN state = 'approved' THEN 1 
            ELSE 0 
        END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(
        case WHEN state ='approved' then amount else 0 end
    ) as approved_total_amount


FROM Transactions
group by  DATE_FORMAT(trans_date, '%y-%m'),country
;