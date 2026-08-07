-- models/staging/stg_invoices.sql

select
    invoice_id,
    customer_id,
    invoice_date::date as invoice_date,
    billing_address,
    billing_city,
    billing_state,
    billing_country,
    billing_postal_code,
    total
from {{ source('chinook', 'invoice') }}
