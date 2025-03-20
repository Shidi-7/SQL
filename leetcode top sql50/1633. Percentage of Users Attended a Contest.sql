/* 1633. Percentage of Users Attended a Contest */

# Write your MySQL query statement below
select r.contest_id, round(count(r.user_id)/(select count(u.user_id) from Users as u) * 100, 2) as percentage
from Register r
group by contest_id
order by percentage desc
, contest_id asc



# standard answer:
	# no joining neede
	# do sub query
		# also used distinct
SELECT 
    contest_id, 
    ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;