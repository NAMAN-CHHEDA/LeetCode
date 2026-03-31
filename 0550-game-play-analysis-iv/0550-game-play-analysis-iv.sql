select round( 
    count(*) / (select count(distinct player_id) from activity)
    , 2) 
    as fraction
from (
    select player_id, min(event_date) as first_date
    from activity
    group by player_id
) f
join activity a
on a.player_id = f.player_id 
and a.event_date = date_add(f.first_date, interval 1 day)
