/* 1934. Confirmation Rate */

# Write your MySQL query statement below
select s.user_id, round(ifnull(avg(c.action = 'confirmed'),0), 2) as confirmation_rate
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by s.user_id



/** 
SELECT user_id, 
       COUNT(CASE WHEN action = 'confirmed' THEN 1 END) * 1.0 / COUNT(action) AS confirmation_rate
FROM Confirmations
GROUP BY user_id;
*/


/*
Note:
SQL does not support WHERE inside COUNT() like this.
COUNT() only counts non-null values, so it can't selectively count based on a condition without a CASE statement.
*/