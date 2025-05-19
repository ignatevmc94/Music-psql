-- Задание 2.

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

-- 5. Название треков, которые содержат слово «мой» или «my».
SELECT name FROM Track
WHERE lower(name) LIKE '%my%' OR lower(name) LIKE '%мой%'


-- Задание 3.

-- 1. Количество исполнителей в каждом жанре.
SELECT g.name, COUNT(ag.artist_id) FROM Genre g
JOIN Artist_Genre ag ON g.genreid = ag.genre_id
GROUP BY g.name
ORDER BY g.name

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(t.trackid)
FROM Track t
JOIN Album a ON t.album_id = a.albumid
WHERE a.album_year BETWEEN 2019 AND 2020;

-- 3. Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG (t.length) from Album a
JOIN Track t ON a.albumid = t.album_id 
GROUP BY a.albumid
ORDER BY a.albumid 

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT nickname FROM artist a 
WHERE a.artistid IN (SELECT artist_id FROM Album_Artist 
WHERE album_id IN (SELECT albumid FROM Album
WHERE album_year <> '2020'))

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT name FROM Collection
WHERE CollectionID IN (SELECT collection_id FROM Collection_Track
WHERE track_id IN (SELECT TrackID FROM Track
WHERE album_id IN (SELECT album_id FROM Album_Artist
WHERE artist_id IN (SELECT artistid FROM Artist WHERE nickname = 'Queen'))))
