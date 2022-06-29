USE codeup_test_db;

SHOW databases;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(200) DEFAULT 'Unknown' NOT NULL,
    name         VARCHAR(200) DEFAULT 'Untitled' NOT NULL,
    release_date INT,
    sales        FLOAT,
    genre        VARCHAR(100),
    PRIMARY KEY (id)
);