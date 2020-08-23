/* Think of database design like a tree. It's best to write the code from the
outer tables towards the central tables. You work from the leaves of the tree
inwards. */

/* ON DELETE CASCADE ON UPDATE CASCADE means that if one id is altered, update
id to the linking table. */

CREATE DATABASE Music DEFAULT CHARACTER SET utf8;

USE Music;

CREATE TABLE Artist(
    artist_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(artist_id)
)   ENGINE = InnoDB;

CREATE TABLE Album(
    album_id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    artist_id  INTEGER,

    PRIMARY KEY(album_id),
    INDEX(title) USING BTREE,

    CONSTRAINT FOREIGN KEY(artist_id)
        REFERENCES Artist(artist_id)
        ON DELETE CASCADE ON UPDATE CASCADE
)   ENGINE = InnoDB;

CREATE TABLE Genre(
    genre_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(genre_id),
    INDEX(name) USING BTREE
)   ENGINE = InnoDB;

CREATE TABLE Track(
    track_id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    len INTEGER,
    rating INTEGER,
    count INTEGER,
    album_id INTEGER,
    genre_id INTEGER,
    PRIMARY KEY(track_id),
    INDEX(title) USING BTREE,

    CONSTRAINT FOREIGN KEY(album_id)
        REFERENCES Album(album_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY(genre_id)
        REFERENCES Genre(genre_id)
        ON DELETE CASCADE ON UPDATE CASCADE
)   ENGINE = InnoDB;
