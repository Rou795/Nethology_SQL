create table if not exists Genres(
	id serial primary key,
	genre_name varchar(255) not null);

create table if not exists Singers(
	id serial primary key,
	singer_name varchar(255) not null);

create table if not exists Albums(
	id serial primary key,
	album_name varchar(255) not null,
	year_foundation date not null);

create table if not exists AlbumSing(
	id serial primary key,
	album_id integer not null references Albums(id),
	singers_id integer not null references Singers(id));

create table if not exists GenSing(
	id serial primary key,
	genres_id integer not null references Genres(id),
	singers_id integer not null references Singers(id));

create table if not exists Songs(
	id serial primary key, 
	album_id integer not null references Albums(id),
	song_name varchar(255) not null,
	duration integer not null);

create table if not exists Collections(
	id serial primary key,
	song_id integer not null references Songs(id),
	collections_name varchar(255) not null,
	year_foundation date not null);