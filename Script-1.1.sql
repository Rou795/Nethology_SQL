CREATE TABLE IF NOT EXISTS Genres(
	id serial PRIMARY KEY,
	genre_name varchar(255) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS Singers(
	id serial PRIMARY KEY,
	singer_name varchar(255) NOT NULL);

CREATE TABLE IF NOT EXISTS Albums(
	id serial PRIMARY KEY,
	album_name varchar(255) NOT NULL,
	year_foundation date NOT NULL CHECK (year_foundation > date('1900-01-01')));

CREATE TABLE IF NOT EXISTS AlbumSing(
	id serial PRIMARY KEY,
	album_id integer NOT NULL REFERENCES Albums(id),
	singers_id integer NOT NULL REFERENCES Singers(id));

CREATE TABLE IF NOT EXISTS GenSing(
	id serial PRIMARY KEY,
	genres_id integer NOT NULL REFERENCES Genres(id),
	singers_id integer NOT NULL REFERENCES Singers(id));

CREATE TABLE IF NOT EXISTS Songs(
	id serial PRIMARY KEY, 
	album_id integer NOT NULL REFERENCES Albums(id),
	song_name varchar(255) NOT NULL,
	duration integer NOT NULL);

CREATE TABLE IF NOT EXISTS Collections(
	id serial PRIMARY KEY,
	collections_name varchar(255) NOT NULL,
	year_foundation date NOT NULL CHECK (year_foundation > date('1900-01-01')));
	
CREATE TABLE IF NOT EXISTS SongsCollect(
	id serial PRIMARY KEY,
	song_id integer NOT NULL REFERENCES Songs(id),
	collect_id integer NOT NULL REFERENCES Collections(id));