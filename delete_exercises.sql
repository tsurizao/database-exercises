USE codeup_test_db;

# Write SELECT statements for:
# Make sure to put appropriate captions before each SELECT.
# Convert the SELECT statements to DELETE.
# Use the MySQL command line client to make sure your recorods really were removed.

# Albums released after 1991.
SELECT name AS 'Albums released after 1990' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

# Albums with the genre 'disco'.
SELECT name AS 'Albums with a disco genre' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

# Albums by 'Whitney Houston'(...or maybe an artist of your choice).
SELECT name AS 'Albums released by Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';