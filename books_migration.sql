USE codeup_test_db;

SHOW databases;

DROP TABLE IF EXISTS books;

SELECT id, title, author, date_published, description, bestseller_weeks FROM books;

CREATE TABLE books
(
    id               INT UNSIGNED AUTO_INCREMENT,
    title            VARCHAR(100),
    author           VARCHAR(100),
    date_published   VARCHAR(20),
    description      TEXT(500),
    bestseller_weeks INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
