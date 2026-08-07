-- models/staging/stg_albums.sql

select
    album_id,
    title as album_title,
    artist_id
FROM {{ source('chinook', 'album') }}