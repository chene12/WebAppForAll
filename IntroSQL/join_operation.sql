/* The JOIN operation can pull info from many databases as long as they are
linked by a foreign key. The ON keyword specify the sql to join only when the
conditions that follow are true. In this case, the sql engine will join only
when Album.artist_id = Artist.artist_id. */

SELECT
    Album.title,    -- What we want
    Album.artist_id,
    Artist.artist_id,
    Artist.name
FROM Album
JOIN Artist
ON Album.artist_id = Artist.artist_id;      -- How the tables are linked
/* Joining two tables without an ON clause gives all possible combinations of
rows. */

SELECT
    Track.title,
    Genre.name
FROM Track
JOIN Genre
ON Track.genre_id = Genre.genre_id

SELECT
    Track.title,
    Artist.name,
    Album.title,
    Genre.name
FROM Track
JOIN Genre
JOIN Album
JOIN Artist
ON Track.genre_id = Genre.genre_id
AND Track.album_id = Album.album_id
AND Album.artist_id = Artist.artist_id
