/* 1174. Immediate Food Delivery II */

# Write your MySQL query statement below
select round(avg(order_date = customer_pref_delivery_date) * 100, 2)
    as immediate_percentage
from Delivery
where (customer_id, order_date) 
    in (select customer_id, min(order_date)
        from Delivery
        group by customer_id) 



# another answer
# Write your MySQL query statement below
select round(avg(order_date = customer_pref_delivery_date) * 100, 2)
    as immediate_percentage
from
    (select d.customer_id, d.order_date, d.customer_pref_delivery_date
    from Delivery as d join
        (select customer_id, min(order_date) as order_date
        from Delivery
        group by customer_id) as d1
    on d.customer_id = d1.customer_id and d.order_date = d1.order_date) as d2


    /**
     * Note:
     * 
     * "Each derived table must have its own alias" error usually means one of two things:
     * - Missing alias on a subquery
     * 		Valid: SELECT * FROM (SELECT 1) AS sub;
     * - Missing column alias in a subquery
     * 		Valid: SELECT customer_id, MIN(order_date) AS first_order_date
     * */