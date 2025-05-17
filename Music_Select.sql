-- 1. Вывести название и продолжительность самого длительного трека.
SELECT name, length FROM Track 
WHERE length = (SELECT MAX (length) FROM Track)

-- 2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM Track 
WHERE length >= 210

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM Collection 
WHERE collection_year BETWEEN 2018 AND 2020

-- 4. Исполнители, чьё имя состоит из одного слова.
SELECT nickname FROM Artist 
WHERE nickname ~ '^[[:alpha:]]+$'

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT name FROM Collection
WHERE CollectionID IN (SELECT collection_id FROM Collection_Track
WHERE track_id IN (SELECT TrackID FROM Track
WHERE album_id IN (SELECT album_id FROM Album_Artist
WHERE artist_id IN (SELECT artistid FROM Artist WHERE nickname = 'Queen'))))
