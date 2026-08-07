-- models/marts/fct_sales.sql

select
    invoice_lines.invoice_line_id,
    tracks.track_name,
    tracks.track_unit_price,
    albums.album_title,
    artists.artist_name,
    invoice_lines.quantity,
    invoice_lines.sale_unit_price,
    invoices.invoice_date,
    invoices.total
from {{ ref('stg_invoice_lines') }} invoice_lines
join {{ ref('stg_tracks') }} tracks using (track_id)
join {{ ref('stg_albums') }} albums using (album_id)
join {{ ref('stg_artists') }} artists using (artist_id)
join {{ ref('stg_invoices') }} invoices using (invoice_id)