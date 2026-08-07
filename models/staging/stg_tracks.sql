-- models/staging/stg_tracks.sql

select
    track_id,
    name as track_name,
    album_id,
    media_type_id,
    genre_id,
    composer as composer_name,
    milliseconds / 1000.0 as duration_seconds,
    round(bytes / 1048576.0, 2) as size_mb,
    unit_price as track_unit_price
from {{ source('chinook', 'track') }}