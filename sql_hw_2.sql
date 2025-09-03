-- первое задание
INSERT INTO genres (name)
VALUES
    ('Rock'),
    ('Pop'),
    ('Hip-Hop'),
    ('Electronic');

INSERT INTO singers (name)
VALUES
    ('Linkin Park'),
    ('Валентин Стрыкало'),
    ('Eminem'),
    ('ГлюкoZа'),
    ('The Weeknd'),
    ('Coldplay');

INSERT INTO albums (name, release_date)
VALUES
    ('Hybrid Theory', '2000-10-24'),
    ('Решится само собой', '2018-05-15'),
    ('After Hours', '2020-03-20'),
    ('Future Nostalgia', '2020-03-27'),
    ('Music to Be Murdered By', '2020-01-17'),
    ('Everyday Life', '2019-11-22'),
    ('Бесполезно', '2019-06-10');

INSERT INTO tracks (name, duration, album_id)
VALUES
    ('In the End', 216, 1),
    ('Crawling', 209, 1),
    ('Решится само собой', 231, 2),
    ('Shake It Off', 219, 2),
    ('Blinding Lights', 200, 3),
    ('Save Your Tears', 215, 3),
    ('Dont Start Now', 183, 4),
    ('Physical', 193, 4),
    ('Godzilla', 210, 5),
    ('Darkness', 337, 5),
    ('Champion of the World', 258, 6),
    ('Everyday Life', 246, 6),
    ('My Universe', 228, 6),
    ('My Way', 175, 3),
    ('Бесполезно', 245, 7);

INSERT INTO collections (name, release_date)
VALUES
    ('Best of 2000s', '2018-12-01'),
    ('2020 Top Charts', '2020-12-31'),
    ('Rock Collection', '2019-03-20'),
    ('My Favorite Songs', '2021-05-10'),
    ('Hip-Hop Mix', '2020-07-15'),
    ('Russian Hits', '2019-11-15');

INSERT INTO singers_genres (singer_id, genre_id)
VALUES
    (1, 1), -- Linkin Park - Rock
    (2, 2), -- Стрыкало - Pop
    (2, 1), -- Стрыкало - Rock
    (3, 3), -- Eminem - Hip-Hop
    (4, 2), -- ГлюкoZа - Pop
    (5, 2), -- The Weeknd - Pop
    (5, 4), -- The Weeknd - Electronic
    (6, 1), -- Coldplay - Rock
    (6, 2); -- Coldplay - Pop

INSERT INTO albums_singers (album_id, singer_id)
VALUES
    (1, 1), -- Hybrid Theory Linkin Park
    (2, 2), -- Решится Валентин Стрыкало
    (3, 5), -- After Hours The Weeknd
    (4, 4), -- Future Nostalgia ГлюкoZа
    (5, 3), -- Music to Eminem
    (6, 6), -- Everyday Life Coldplay
    (7, 2); -- Бесполезно Стрыкало

INSERT INTO tracks_collections (track_id, collection_id)
VALUES
    (1, 1),  (1, 3),   
    (2, 1),  (2, 3),   
    (3, 6),  (3, 4),   
    (4, 2),  (4, 4),   
    (5, 2),  (5, 4),  
    (6, 2),  (6, 4),  
    (7, 2),  (7, 4),   
    (8, 2),  (8, 4),   
    (9, 2),  (9, 5),   
    (10, 2), (10, 5),  
    (11, 4), (11, 1),  
    (12, 4), (12, 1),  
    (13, 4), (13, 2),  
    (14, 4),           
    (15, 3), (15, 6);  