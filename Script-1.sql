insert into singers values
	(1, 'Taylor Swift'), 
	(2, 'The Weeknd'), 
	(3, 'Drake'),
	(4, 'Bad Bunny'),
	(5, 'SZA');
insert into genres values
	(1, 'Pop'), 
	(2, 'Rap'), 
	(3, 'Classical');
insert into albums values
	(1, 'After Hours', 2020), 
	(2, 'Certified Lover Boy', 2021), 
	(3, 'Midnights', 2022),
	(4, 'Oasis', 2019),
	(5, 'SOS', 2022);
insert into tracks values
	(1, 'Blinding Lights', 200, 1), 
	(2, 'After Hours', 367, 1), 
	(3, 'Fair Trade', 292, 2),
	(4, 'Low', 181, 5),
	(5, 'Odio', 272, 4),
	(6, 'Karma', 204, 3);
insert into collections values
	(1, 'Best of 2020', 2020),
	(2, 'Best of 2021', 2021),
	(3, 'Best of 2022', 2022),
	(4, 'Latin Hits', 2022);
insert into singergenres values
	(1, 1),  -- Taylor Swift - Pop
	(2, 1),  -- The Weeknd - Pop
	(3, 2),  -- Drake - Rap
	(4, 2),  -- Bad Bunny - Rap
	(5, 1);  -- SZA - Pop
insert into singeralbums values
	(2, 1),  -- The Weeknd - After Hours
	(3, 2),  -- Drake - Certified Lover Boy
	(1, 3),  -- Taylor Swift - Midnights
	(4, 4),  -- Bad Bunny - Oasis
	(5, 5);  -- SZA - SOS
insert into collectiontracks values
	(1, 1),  -- Best of 2020 - Blinding Lights
	(1, 2),  -- Best of 2020 - After Hours
	(2, 3),  -- Best of 2021 - Fair Trade
	(3, 4),  -- Best of 2022 - Low
	(4, 5),  -- Latin Hits - Odio
	(3, 6);  -- Best of 2022 - Karma