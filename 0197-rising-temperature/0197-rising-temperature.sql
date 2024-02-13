# Write your MySQL query statement below
select t.id from weather as t,Weather as y
where DateDiff(t.recordDate,y.recordDate)=1
and t.temperature > y.temperature