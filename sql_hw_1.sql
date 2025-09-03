CREATE TABLE IF NOT EXISTS genres (
    id serial PRIMARY KEY,
    name varchar(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singers (
    id serial PRIMARY KEY,
    name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
    id serial PRIMARY KEY,
    name varchar(40) NOT NULL,
    release_date date
);

CREATE TABLE IF NOT EXISTS tracks (
    id serial PRIMARY KEY,
    name varchar(60) NOT NULL,
    duration integer NOT NULL CHECK (duration > 0),
    album_id integer REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
    id serial PRIMARY KEY,
    name varchar(200) NOT NULL,
    release_date date
);

CREATE TABLE IF NOT EXISTS singers_genres (
    singer_id integer REFERENCES singers(id),
    genre_id integer REFERENCES genres(id),
    PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums_singers (
    album_id integer REFERENCES albums(id),
    singer_id integer REFERENCES singers(id),
    PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS tracks_collections (
    track_id integer REFERENCES tracks(id),
    collection_id integer REFERENCES collections(id),
    PRIMARY KEY (track_id, collection_id)
);