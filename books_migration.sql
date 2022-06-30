USE codeup_test_db;

SHOW databases;

SHOW tables;

DROP TABLE IF EXISTS books;

SELECT id, title, author, date_published, description, bestseller_weeks
FROM books;

CREATE TABLE books
(
    id               INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title            VARCHAR(100) NOT NULL,
    author           VARCHAR(100)          DEFAULT 'Unknown',
    date_published   DATE         NOT NULL,
    description      TEXT,
    bestseller_weeks INT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
