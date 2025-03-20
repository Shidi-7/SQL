/*570. Managers with at Least 5 Direct Reports */

# Write your MySQL query statement below
select e2.name 
from Employee e right join Employee e2
on e.managerId = e2.id
group by e2.id
having count(e.id) >=5



/** In SQL, the HAVING and WHERE clauses are both used to filter data, but they are used in different contexts.

WHERE: It is used to filter rows before any grouping (aggregation) occurs. The WHERE clause filters the rows based on the condition specified, and it is applied to individual rows in the table.

HAVING: It is used to filter groups after aggregation has taken place. The HAVING clause is applied to the result of GROUP BY and is typically used when you need to filter on the result of aggregate functions like COUNT(), SUM(), AVG(), etc. */