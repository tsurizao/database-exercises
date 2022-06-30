USE codeup_test_db;

# The name of all albums by Pink Floyd
SELECT name AS 'Pink Floyd albums'
FROM albums
WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was release
SELECT release_date AS 'Sgt. Peppers Lonely Hearts Club Band year released'
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

# The genre of Nevermind
SELECT genre AS 'Nirvana - Nevermind genre'
FROM albums
WHERE name = 'Nevermind';

# Which albums were released in the 1990s
SELECT name AS 'Albums release in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 20 million certified sales
SELECT name AS 'Albums with less than 20 million certified sales' FROM albums WHERE sales < 20;

# All the albums with a genre of "Rock".  Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# The other genres of rock aren't listed because the WHERE string 'rock' is specific, would need to use LIKE instead.
SELECT name AS 'Albums with the genre of Rock' FROM Albums WHERE genre = 'rock';