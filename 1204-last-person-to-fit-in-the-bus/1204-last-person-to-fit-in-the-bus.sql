# Write your MySQL query statement below
with first as (
    select person_id, person_name, weight, turn,
        sum(weight) over (order by turn) as total_weight
    from queue    
)
select person_name
from first
where total_weight <= 1000 
order by turn desc
limit 1
;