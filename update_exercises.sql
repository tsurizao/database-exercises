USE codeup_test_db;

SELECT name AS 'All albums in table'
FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT name, sales
FROM albums;

SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT name, release_date
FROM albums
WHERE name < 1980;

SELECT name AS 'All Michael Jackson albums'
FROM albums
WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist, name
FROM albums
WHERE artist = 'Peter Jackson';