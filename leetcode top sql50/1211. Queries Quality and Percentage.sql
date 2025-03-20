/* 1211. Queries Quality and Percentage */


/** answer 1: */

# Write your MySQL query statement below
select query_name
, round(sum(rating / position) / count(*), 2) as quality
, round(sum(rating < 3) / count(*) * 100, 2) as poor_query_percentage
from  Queries
group by query_name


/** answer 2: */

# Write your MySQL query statement below
select query_name
, round(sum(rating / position) / count(*), 2) as quality
, round(count(case when rating < 3 then 1 END) / count(*) * 100, 2) as poor_query_percentage
from  Queries
group by query_name


/* other's answer: */

SELECT
    query_name,
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;




/**
Why does SUM(rating < 3) work?
In MySQL, the expression rating < 3 returns a boolean value:
- TRUE is evaluated as 1
- FALSE is evaluated as 0

So:
SUM(rating < 3)
It counts the number of rows where rating < 3 because:
- rating < 3 evaluates to 1 for such rows.
- SUM(1s) gives the total count of poor queries.




CASE WHEN rating < 3 THEN 1 END returns 1 for rows where rating < 3, and NULL otherwise.
COUNT() ignores NULL values, so it only counts the rows where rating < 3.



COUNT(CASE WHEN rating < 3 THEN 1 ELSE 0 END)
This counts both 1s and 0s, because all rows have either 1 or 0 (no NULLs).
So it counts all rows, regardless of whether rating < 3 or not.
❌ Wrong behavior: Instead of counting only "poor queries", it counts all queries.
*/