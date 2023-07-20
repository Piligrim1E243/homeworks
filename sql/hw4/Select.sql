SELECT name, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT name
FROM tracks
WHERE duration >= '00:03:30';

SELECT name
FROM compilations
WHERE date_of_issue BETWEEN 2018 AND 2020;

SELECT name
FROM performers
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%';

SELECT genres.name AS genre, COUNT(performers.id) AS count
FROM genres
LEFT JOIN genres_performers ON genres.id = genres_performers.genr_id
LEFT JOIN performers ON genres_performers.performer_id = performers.id
GROUP BY genres.name;

SELECT COUNT(tracks.id) AS count
FROM tracks
JOIN albums ON tracks.album_id = albums.id
WHERE albums.year_of_issue BETWEEN 2019 AND 2020;

SELECT albums.name AS album, AVG(TIME_TO_SEC(tracks.duration)) AS avg_duration
FROM albums
JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.name;

SELECT performers.name
FROM performers
LEFT JOIN albums_performers ON performers.id = albums_performers.performer_id
LEFT JOIN albums ON albums_performers.album_id = albums.id
WHERE albums.year_of_issue <> 202 OR albums.year_of_issue IS NULL;

SELECT c.name FROM compilations c
JOIN tracks_compilations tc ON c.id = tc.compilation_id
JOIN tracks t ON tc.track_id = t.id
JOIN albums a ON t.album_id = a.id
JOIN albums_performers ap ON a.id = ap.album_id
JOIN performers p ON ap.performer_id = p.id
WHERE p.name = 'Eminem';