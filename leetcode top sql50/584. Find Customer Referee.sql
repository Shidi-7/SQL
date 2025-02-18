/* 584. Find Customer Referee */

# Write your MySQL query statement below
select all name from Customer
where referee_id != 2 or referee_id is null


# NOTE: will need to handle the `null` case, by expilictly specifying: referee_id is null