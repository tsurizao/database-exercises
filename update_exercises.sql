USE codeup_test_db;


# Write select statements to output each of the following:
# After each SELECT add an UPDATE statement to:

# All albums in your table.
# Make all albums 10 times more popular.
SELECT name AS 'All albums in table'
FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT name, sales
FROM albums;

# All albums released before 1980.
# Move all the albums before 1980 back to the 1800s.
SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT name, release_date
FROM albums
WHERE name < 1980;

# All albums by Michael Jackson.
# Change 'Michael Jackson' to 'Peter Jackson'
SELECT name AS 'All Michael Jackson albums'
FROM albums
WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist, name
FROM albums
WHERE artist = 'Peter Jackson';