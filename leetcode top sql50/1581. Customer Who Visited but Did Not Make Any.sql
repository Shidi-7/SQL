/* 1581. Customer Who Visited but Did Not Make Any Transactions */

# Write your MySQL query statement below
select v.customer_id, COUNT(*) as count_no_trans
from Visits v left join Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id