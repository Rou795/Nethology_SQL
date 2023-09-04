-- Количество исполнителей в каждом жанре.

select genres_id, count(singers_id)
from gen_sing 
group by genres_id 

-- Количество треков, вошедших в альбомы 2019–2020 годов

select count(s.id), s.album_id from songs s 
join albums a on s.album_id = a.id 
where a.year_foundation between '2019-01-01' and '2020-12-31'
group by s.id;

-- Средняя продолжительность треков по каждому альбому.

select avg(s.duration), a.album_name from songs s 
join albums a  on s.album_id = a.id 
group by a.album_name  

-- Все исполнители, которые не выпустили альбомы в 2020 году.

select s.song_name, a.album_name from songs s 
join albums a on s.album_id = a.id 
where not a.year_foundation between '2020-01-01' and '2020-12-31';
