-- добавление альбомов

insert into albums (album_name, year_foundation) 
values ('Meteora', '2003-03-25 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('Hybrid Theory', '2003-10-24 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('Продавец кошмаров', '2006-12-05 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('Ели мясо мужики', '1999-06-16 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('Mr Brightside', '2004-07-06 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('5th gear', '2007-06-19 00:00:00.00000');

insert into albums (album_name, year_foundation) 
values ('Алкоголичка', '2019-07-05 00:00:00.00000');

-- добавление исполнителей

insert into singers (singer_name) 
values ('Linkin Park');

insert into singers (singer_name) 
values ('Король и шут');

insert into singers (singer_name) 
values ('Killers');

insert into singers (singer_name) 
values ('Brad Paisley');

insert into singers (singer_name) 
values ('Артур Пирожков');

-- добавление жанров

insert into genres (genre_name)
values ('Rock');

insert into genres (genre_name)
values ('Руский рок');

insert into genres (genre_name)
values ('Alternative');

insert into genres (genre_name)
values ('Pop');

insert into genres (genre_name)
values ('Country');

-- добавление песен

insert into songs (album_id, song_name, duration) 
values (1, 'Numb', 3.1);

insert into songs (album_id, song_name, duration) 
values (2, 'Papercut', 3.1);

insert into songs (album_id, song_name, duration)
values (3, 'Марионетки', 2.5);

insert into songs (album_id, song_name, duration)
values (4, 'Ели мясо мужики', 2.5);

insert into songs (album_id, song_name, duration)
values (5, 'Mr Brightside', 3.9);

insert into songs (album_id, song_name, duration)
values (6, 'Whiskey lullaby', 4.1);

insert into songs (album_id, song_name, duration)
values (7, 'Алкоголичка', 2.9);

insert into songs (album_id, song_name, duration)
values (3, 'Мой ответ', 3.4);

insert into songs (album_id, song_name, duration)
values (1, 'My December', 4.0);

-- добавляем сборники

insert into collections (collections_name, year_foundation)
values ('Для энергии', '2019-07-06 00:00:00.00000');

insert into collections (collections_name, year_foundation)
values ('Радио Максимум', '2017-11-26 00:00:00.00000');

insert into collections (collections_name, year_foundation)
values ('Турне по России', '2018-11-06 00:00:00.00000');

insert into collections (collections_name, year_foundation)
values ('Все любят кантри', '2010-05-03 00:00:00.00000');

insert into collections (collections_name, year_foundation)
values ('Любимые песни прошлого', '2019-05-03 00:00:00.00000');

-- заполнение связей: альбомы/песни

insert into album_sing (album_id, singers_id)
values (1, 1);

insert into album_sing (album_id, singers_id)
values (2, 1);

insert into album_sing (album_id, singers_id)
values (3, 2);

insert into album_sing (album_id, singers_id)
values (4, 2);

insert into album_sing (album_id, singers_id)
values (5, 3);

insert into album_sing (album_id, singers_id)
values (6, 4);

insert into album_sing (album_id, singers_id)
values (7, 5);

-- заполнение связей: жанр/песня

insert into gen_sing (genres_id, singers_id)
values (1, 1);

insert into gen_sing (genres_id, singers_id)
values (2, 2);

insert into gen_sing (genres_id, singers_id)
values (3, 3);

insert into gen_sing (genres_id, singers_id)
values (4, 4);

insert into gen_sing (genres_id, singers_id)
values (5, 5);

-- заполнение связей: сборник/песня

insert into songs_collect (song_id, collect_id)
values (1, 1);

insert into songs_collect (song_id, collect_id)
values (2, 1);

insert into songs_collect (song_id, collect_id)
values (3, 2);

insert into songs_collect (song_id, collect_id)
values (4, 2);

insert into songs_collect (song_id, collect_id)
values (4, 3);

insert into songs_collect (song_id, collect_id)
values (5, 3);

insert into songs_collect (song_id, collect_id)
values (6, 4);

insert into songs_collect (song_id, collect_id)
values (1, 5);

insert into songs_collect (song_id, collect_id)
values (4, 5);

insert into songs_collect (song_id, collect_id)
values (3, 5);