INSERT INTO genres(id, name)
VALUES(1, 'pop');

INSERT INTO genres(id, name)
VALUES(2, 'rnb');

INSERT INTO genres(id, name)
VALUES(3, 'rap');

INSERT INTO genres(id, name)
VALUES(4, 'reggae');

INSERT INTO genres(id, name)
VALUES(5, 'rhytm_and_blues');

INSERT INTO genres(id, name)
VALUES(6, 'country');

INSERT INTO performers(id, name)
VALUES(1, 'Michael Jackson');

INSERT INTO performers(id, name)
VALUES(2, 'Rihanna');

INSERT INTO performers(id, name)
VALUES(3, 'Lady Gaga');

INSERT INTO performers(id, name)
VALUES(4, 'Eminem');

INSERT INTO performers(id, name)
VALUES(5, 'Justin Bieber');

INSERT INTO performers(id, name)
VALUES(6, 'Bob Marley');

INSERT INTO performers(id, name)
VALUES(7, 'Barry White');

INSERT INTO performers(id, name)
VALUES(8, 'George Straight');

INSERT INTO albums(id, name, year_of_issue)
VALUES(1, 'Go to Be There', 1972);

INSERT INTO albums(id, name, year_of_issue)
VALUES(2, 'Loud', 2020);

INSERT INTO albums(id, name, year_of_issue)
VALUES(3, 'The Fame', 2008);

INSERT INTO albums(id, name, year_of_issue)
VALUES(4, 'Relapse', 2009);

INSERT INTO albums(id, name, year_of_issue)
VALUES(5, 'My World 2.0', 2018);

INSERT INTO albums(id, name, year_of_issue)
VALUES(6, 'Soul Revolution', 1971);

INSERT INTO albums(id, name, year_of_issue)
VALUES(7, 'Together Brothers', 1974);

INSERT INTO albums(id, name, year_of_issue)
VALUES(1, '#7', 1986);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(1, 'I Wanna Be Where You Are', '00:02:57', 1);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(2, "In Our Small Way", "00:03:38", 1);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(3, "Wings Of My Love", "00:03:25", 1);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(4, "Whats My Name", "00:04:23", 2);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(5, "Skin", "00:05:04", 2);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(6, "Just Dance", "00:04:02", 3);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(7, "Paparazzi", "00:03:28", 3);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(8, "Hello", "00:04:08", 4);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(9, "We Made You", "00:04:29", 4);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(10, "Baby", "00:03:36", 5);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(11, "Up", "00:03:55", 5);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(12, "Stuck In The Moment", "00:03:43", 5);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(13, "Soul Rebel", "00:03:19", 6);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(14, "Kaya", "00:02:39", 6);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(15, "Alive And Well", "00:01:15", 7);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(16, "You Gotta Case", "00:01:26", 7);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(17, "Cow Town", "00:02:49", 8);

INSERT INTO tracks(id, name, duration, album_id)
VALUES(18, "Deep Water", "00:02:31", 8);

INSERT INTO compilations(id, name, date_of_issue)
VALUES(1, "pop compilation", "2020/01/01");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(2, "RnB compilation", "2020/05/03");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(3, "star compilation", "2020/09/01");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(4, "rhytm and blues compilation", "1975/11/07");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(5, "women star compilation", "2020/06/10");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(6, "american compilation", "2010/01/01");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(7, "afroamerican compilation", "2020/02/02");

INSERT INTO compilations(id, name, date_of_issue)
VALUES(8, "all in one", "2020/12/31");

INSERT INTO albums_performers(album_id, performer_id)
VALUES(1, 1);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(2, 2);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(3, 3);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(4, 4);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(5, 5);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(6, 6);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(7, 7);

INSERT INTO albums_performers(album_id, performer_id)
VALUES(8, 8);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 1);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 2);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 3);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 5);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 6);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 7);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 10);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(1, 11);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(2, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(2, 5);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(2, 10);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(2, 11);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 5);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 6);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 7);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 8);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 9);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 10);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(3, 11);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(4, 1);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(4, 2);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(4, 3);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(4, 14);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(4, 15);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(5, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(5, 5);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(5, 6);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(5, 7);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 1);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 2);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 3);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 6);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 7);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 8);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 9);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 14);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 15);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 16);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(6, 17);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 1);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 2);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 3);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 12);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 13);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 14);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(7, 15);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 1);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 2);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 3);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 4);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 5);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 6);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 7);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 8);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 9);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 10);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 11);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 12);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 13);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 14);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 15);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 16);

INSERT INTO tracks_compilations(compilation_id, track_id)
VALUES(8, 17);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(1, 1);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(2, 1);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(1, 2);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(2, 2);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(4, 2);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(1, 3);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(3, 4);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(1, 5);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(2, 5);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(4, 6);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(5, 7);

INSERT INTO genres_performers(genr_id, performer_id)
VALUES(6, 8);