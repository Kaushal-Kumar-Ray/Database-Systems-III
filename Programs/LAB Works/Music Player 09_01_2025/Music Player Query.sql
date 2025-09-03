-- CREATE database music_player;
USE music_player;

-- USERS: people in the system
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ALBUMS: each belongs to a user, artist, and genre
CREATE TABLE Albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year YEAR,
    user_id INT NOT NULL,        -- total participation: must belong to a user
    artist_id INT NOT NULL,      -- total participation: must belong to an artist
    genre_id INT NOT NULL,       -- total participation: must have a genre
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- ARTISTS: music creators
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    country VARCHAR(50),
   debut_year YEAR
);


-- GENRES: master/lookup table
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT
);


-- SONGS: each belongs to album, artist, and genre
CREATE TABLE Songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    movie_name VARCHAR(100),
    duration TIME,
	release_year YEAR,
    album_id INT NOT NULL,       -- total participation: must belong to an album
    artist_id INT NOT NULL,      -- total participation: must belong to an artist
    genre_id INT NOT NULL,       -- total participation: must have a genre
    FOREIGN KEY (album_id) REFERENCES Albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);
