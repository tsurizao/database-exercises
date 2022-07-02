USE codeup_test_db;

SHOW databases;

SHOW TABLES;

DESCRIBE albums;

DROP TABLE IF EXISTS albums;

SELECT id, artist, name, release_date, sales, genre
FROM albums;

CREATE TABLE albums
(
    id           INT UNSIGNED AUTO_INCREMENT,
    artist       VARCHAR(200) DEFAULT 'Unknown'  NOT NULL,
    name         VARCHAR(200) DEFAULT 'Untitled' NOT NULL,
    release_date INT,
    sales        FLOAT,
    genre        VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE (name, artist)
);
