-- task 2
select title, duration from tracks
where duration = (select max(duration) from tracks);

select title from tracks
where duration > 219;

select title from collections
where releaseyear between 2018 and 2021;

select nickname from singers
where nickname not like '% %';

select title from tracks
where lower(title) like '%hours%' or lower(title) like '%fair%';

-- task 3
select name, count(singerid) number_of_singers from genres g
left join singergenres s on g.genreid = s.genreid
group by name;

select count(*) from tracks t
join albums a on t.albumid = a.albumid
where a.releaseyear between 2019 and 2020;

select a.title, avg(duration) average_track_duration 
from albums a
join tracks t on a.albumid = t.albumid
group by a.title;

select nickname from singers s
where s.singerid not in(
select singerid from singeralbums s2
join albums a on s2.albumid = a.albumid
where a.releaseyear = 2020
);

select title from collections c
where c.collectionid in(
select collectionid from collectiontracks c2
join tracks t on c2.trackid = t.trackid
where t.albumid in(
	select a.albumid from albums a
	join singeralbums s on a.albumid = s.albumid
	where s.singerid in(
		select s2.singerid from singers s2
		where s2.nickname = 'The Weeknd'
		)
	)
);