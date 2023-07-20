CREATE TABLE genres(
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE performers(
   id INT PRIMARY KEY,
   name VARCHAR(255)
);

CREATE TABLE albums(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    year_of_issue INT,
);

CREATE TABLE tracks(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration TIME,
    album_id INT,
    FOREIGN KEY(album_id) REFERENCES albums(id)
);

CREATE TABLE compilations(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    date_of_issue INT
);

CREATE TABLE tracks_compilations(
    compilation_id INT,
    FOREIGN KEY(compilation_id) REFERENCES compilations(id),
    track_id INT,
    FOREIGN KEY(track_id) REFERENCES tracks(id)
);

CREATE TABLE genres_performers(
    genr_id INT,
    FOREIGN KEY(genr_id) REFERENCES genres(id),
    performer_id INT,
    FOREIGN KEY(performer_id) REFERENCES performers(id)
);

CREATE TABLE albums_performers(
    album_id INT,
    FOREIGN KEY(album_id) REFERENCES albums(id),
    performer_id INT,
    FOREIGN KEY(performer_id) REFERENCES performers(id)
);