-- Название и продолжительность самого длительного трека.

select song_name, duration
from songs
order by duration desc
limit 1

-- Название треков, продолжительность которых не менее 3,5 минут.

select song_name, duration
from songs
where duration > 3.5

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно

select collections_name, year_foundation 
from collections
where year_foundation between '2018-01-01' and '2020-12-31' 

-- Исполнители, чьё имя состоит из одного слова

select singer_name
from singers
where singer_name not like '% %'

-- Название треков, которые содержат слово «мой» или «my»

select song_name
from songs
where song_name like '%мой%' 
or song_name like '%my%'
or song_name like 'My%'
or song_name like 'Мой%'
or song_name like '%Мой'
or song_name like '%my';