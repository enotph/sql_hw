-- второе задание
SELECT
    name,
    duration
FROM
    tracks
ORDER BY
    duration DESC
LIMIT 1;

SELECT
    name
FROM
    tracks
WHERE
    duration >= 210;

SELECT
    name
FROM
    collections
WHERE
    release_date BETWEEN '2018-01-01' AND '2020-12-31';

SELECT
    name
FROM
    singers
WHERE
    name NOT LIKE '% %';

SELECT
    name
FROM
    tracks
WHERE
    LOWER(name) LIKE '%мой%'
    OR LOWER(name) LIKE '%my%';

-- третье задание
SELECT
    g.name AS genre_name,
    COUNT(sg.singer_id) AS singers_count
FROM
    genres AS g
LEFT JOIN
    singers_genres AS sg
    ON g.id = sg.genre_id
GROUP BY
    g.name
ORDER BY
    singers_count DESC;

SELECT
    COUNT(t.id) AS tracks_count
FROM
    tracks AS t
INNER JOIN
    albums AS a
    ON t.album_id = a.id
WHERE
    a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT
    a.name AS album_name,
    ROUND(AVG(t.duration), 2) AS avg_duration
FROM
    albums AS a
INNER JOIN
    tracks AS t
    ON a.id = t.album_id
GROUP BY
    a.name
ORDER BY
    avg_duration DESC;

SELECT
    s.name AS singer_name
FROM
    singers AS s
WHERE
    s.id NOT IN (
        SELECT DISTINCT
            asg.singer_id
        FROM
            albums_singers AS asg
        INNER JOIN
            albums AS a
            ON asg.album_id = a.id
        WHERE
            EXTRACT(YEAR FROM a.release_date) = 2020
    )
ORDER BY
    s.name;

SELECT DISTINCT
    c.name AS collection_name
FROM
    collections AS c
INNER JOIN
    tracks_collections AS tc
    ON c.id = tc.collection_id
INNER JOIN
    tracks AS t
    ON tc.track_id = t.id
INNER JOIN
    albums AS a
    ON t.album_id = a.id
INNER JOIN
    albums_singers AS als
    ON a.id = als.album_id
INNER JOIN
    singers AS s
    ON als.singer_id = s.id
WHERE
    s.name = 'Валентин Стрыкало'
ORDER BY
    c.name;