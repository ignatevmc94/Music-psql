CREATE TABLE  Album (
  AlbumID INT PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  album_year INT NOT NULL
);
CREATE TABLE  Artist (
  ArtistID INT PRIMARY KEY,
  nickname VARCHAR(250) NOT NULL
);
CREATE TABLE  Genre (
  GenreID INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE  Track (
  TrackID INT PRIMARY KEY,
  name VARCHAR(100),
  lenght INT CHECK (lenght > 3) ,
  album_id INT REFERENCES Album(AlbumID)
);
CREATE TABLE  Album_Artist (
  Album_ArtistID INT PRIMARY KEY,
  album_id INT REFERENCES Album(AlbumID),
  artist_id INT REFERENCES Artist(ArtistID)
);
CREATE TABLE  Artist_Genre (
  Artist_GenreID INT PRIMARY KEY,
  artist_id INT REFERENCES Artist(ArtistID),
  genre_id INT REFERENCES Genre(GenreID)
);
CREATE TABLE  Collection (
  CollectionID INT PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  collection_year INT NOT NULL CHECK (collection_year > 1960) 
);
CREATE TABLE Collection_Track (
  CT_ID INT PRIMARY KEY,
  collection_id INT REFERENCES Collection(CollectionID),
  track_id INT REFERENCES Track(TrackID)
);
