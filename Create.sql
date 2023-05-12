CREATE TABLE albums (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    year_of_issue integer NOT NULL
);

CREATE TABLE compilations (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    date date NOT NULL
);

CREATE TABLE compilations_tracks (
    compilation_id integer NOT NULL,
    track_id integer NOT NULL
);

CREATE TABLE genres (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);

CREATE TABLE genres_performers (
    genr_id integer NOT NULL,
    performer_id integer NOT NULL
);

CREATE TABLE performers (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);

CREATE TABLE performers_albums (
    performer_id integer NOT NULL,
    album_id integer NOT NULL
);

CREATE TABLE tracks (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    duration timestamp without time zone NOT NULL,
    album integer
);

