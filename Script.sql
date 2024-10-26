create table if not exists Genres (
	GenreID serial primary key,
	name varchar(25) not null unique
);
create table if not exists Singers (
	SingerID serial primary key,
	Nickname varchar(25) not null unique
);
create table if not exists SingerGenres (
	SingerID integer references Singers(SingerID),
	GenreID integer references Genres(GenreID),
	primary key(SingerID, GenreID)
);
create table if not exists Albums (
	AlbumID serial primary key,
	Title varchar(25) not null unique,
	ReleaseYear integer not null
);
create table if not exists SingerAlbums (
	SingerID integer references Singers(SingerID),
	AlbumID integer references Albums(AlbumID),
	primary key(SingerID, AlbumID)
);
create table if not exists Tracks (
	TrackID serial primary key,
	Title varchar(25) not null,
	Duration integer not null,
	AlbumID integer references Albums(AlbumID)
);
create table if not exists Collections (
	CollectionID serial primary key,
	Title varchar(25) not null unique,
	ReleaseYear integer not null
);
create table if not exists CollectionTracks (
	CollectionID integer references Collections(CollectionID),
	TrackID integer references Tracks(TrackID),
	primary key(CollectionID, TrackID)
);