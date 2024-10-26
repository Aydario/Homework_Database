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