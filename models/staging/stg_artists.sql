-- models/staging/stg_artists.sql

select 
    artist_id,
    name as artist_name
from {{ source('chinook', 'artist') }}