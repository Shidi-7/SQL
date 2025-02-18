/* 1148. Article Views I */

# Write your MySQL query statement below
select distinct author_id as id from Views
where author_id = viewer_id
order by id

# NOTE: to remove duplicated rows, use `distinct`, like `select distinct ..`