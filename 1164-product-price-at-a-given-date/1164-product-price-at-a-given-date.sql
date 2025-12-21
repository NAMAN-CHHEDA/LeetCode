with ranked as (
    select product_id,
           new_price,
           change_date,
           row_number() over (
            partition by product_id
            order by change_date desc
            ) as rn
           from products
           where change_date <= '2019-08-16'
),
all_products as (
    select distinct product_id
    from products
)
select ap.product_id,
       coalesce (r.new_price,10) as price
from all_products ap
left join ranked r
on ap.product_id = r.product_id and r.rn = 1;