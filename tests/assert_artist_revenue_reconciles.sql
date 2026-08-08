-- tests/assert_artist_revenue_reconciles.sql

select
    f.total as fct_total,
    a.total as agg_total
from (select sum({{ revenue('quantity', 'sale_unit_price') }}) as total from {{ ref('fct_sales') }}) f
cross join (select sum(total_revenue) as total from {{ ref('agg_artist_revenue') }}) a
where f.total != a.total
