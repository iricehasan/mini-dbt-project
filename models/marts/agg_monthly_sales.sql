-- models/marts/agg_monthly_sales.sql

select
    date_trunc('month', invoice_date) as sales_month,
    sum( {{ revenue('quantity', 'sale_unit_price') }}) as total_revenue,
    count(distinct invoice_line_id) as line_items_sold
from {{ ref('fct_sales') }}
group by 1
order by sales_month