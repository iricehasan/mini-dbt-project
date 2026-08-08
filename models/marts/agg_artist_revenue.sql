-- models/marts/agg_artist_revenue.sql

select
    artist_name,
    sum( {{ revenue('quantity', 'sale_unit_price') }}) as total_revenue
from {{ ref('fct_sales') }}
group by 1
order by total_revenue desc