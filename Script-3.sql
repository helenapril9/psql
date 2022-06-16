CREATE TABLE IF NOT EXISTS Jenre (
 	  id SERIAL PRIMARY KEY,
 	  jenre_name VARCHAR(60) NOT null
 );
  CREATE TABLE IF NOT EXISTS Artist (
 	  id SERIAL PRIMARY KEY,
 	  artist_name VARCHAR(60) NOT null
 );
  CREATE TABLE IF NOT EXISTS Album (
 	 id SERIAL PRIMARY KEY,
    album_name VARCHAR(60) NOT null,
    album_year INTEGER NOT null
   );

  CREATE TABLE IF NOT EXISTS Collection (
 	  id SERIAL PRIMARY KEY,
 	  collection_name VARCHAR(60) NOT null,
      collection_year INTEGER NOT null
 );

 CREATE TABLE IF NOT EXISTS Track (
 	  id SERIAL PRIMARY KEY,
 	  track_name VARCHAR(60) NOT NULL,
 	  diration NUMERIC(3,2) NOT NULL,
 	  album_id INTEGER NOT NULL REFERENCES Album(id)
 );

  CREATE TABLE IF NOT EXISTS Artist_jenre (
    jenre_id INTEGER NOT NULL REFERENCES Jenre(id),
    artist_id INTEGER NOT NULL REFERENCES Artist(id),
    CONSTRAINT pk PRIMARY KEY (jenre_id, artist_id)
 );

CREATE TABLE IF NOT EXISTS Album_artist (
    album_id INTEGER NOT NULL REFERENCES Album(id),
    artist_id INTEGER NOT NULL REFERENCES Artist(id),
    CONSTRAINT pk1 PRIMARY KEY (album_id, artist_id)
 );

CREATE TABLE IF NOT EXISTS Collection_track (
    track_id INTEGER NOT NULL REFERENCES Track(id),
    collection_id INTEGER NOT NULL REFERENCES Collection(id),
    CONSTRAINT pk2 PRIMARY KEY (track_id, collection_id)
 );
