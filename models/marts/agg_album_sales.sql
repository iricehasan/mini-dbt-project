-- models/marts/agg_album_sales.sql

select
    album_title,
    sum( {{ revenue('quantity', 'sale_unit_price') }}) as total_revenue,
    sum(quantity) as units_sold
from {{ ref('fct_sales') }}
group by 1
order by total_revenue desc