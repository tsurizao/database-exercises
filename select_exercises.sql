USE codeup_test_db;

SELECT name AS 'Pink Floyd albums'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Sgt. Peppers Lonely Hearts Club Band year released'
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS 'Nirvana - Nevermind genre'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums release in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20 million certified sales' FROM albums WHERE sales < 20;

SELECT name AS 'Albums with the genre of Rock' FROM Albums WHERE genre = 'rock';