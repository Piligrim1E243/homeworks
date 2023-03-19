select genr_id, count(performer_id) from genres_performers gp
group by genr_id
order by genr_id ;

select album, count(t.name) from tracks t
join albums a on t.album = a.id
where a.year_of_issue >'2018'
group by album
order by album;

select album, avg(duration) from tracks t
group by album
order by album;

select p.name from performers p
join albums a on p.id = a.id
where a.year_of_issue <> '2020';

select distinct c.name from compilations c
join compilations_tracks ct on c.id = ct.compilation_id
join tracks t on ct.track_id = t.id
join performers p on t.album = p.id
where p.name = 'Eminem';

select a.name from albums a
join genres_performers gp on a.id = gp.performer_id 
group by a.name
having count(*) > 1
order by a.name;

insert into tracks(name, duration, album)
values('Stuck in the Moment', '00:03:43', 5);

select t.name from tracks t
where t.id not in (select track_id from compilations_tracks ct);

select p.name from performers p
join albums a on p.id = a.id 
join tracks t on a.id = t.album
where t.duration = (select min(duration) from tracks);

select a.name, count(t.name) from albums a
join tracks t on a.id = t.album
group by a.name
having count(t.name) = (
	select min(count) from (
		select a.name, count(t.name) from albums a
		join tracks t on a.id = t.album
		group by a.name) as foo);