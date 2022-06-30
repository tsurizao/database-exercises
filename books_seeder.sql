USE codeup_test_db;

TRUNCATE TABLE books;

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES ('To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'This is a book about birds.', 0),
       ('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'This is a book about a great thing.', 10),
       ('Harry Potter and the Sorcerer`s Stone', 'J.K. Rowling', '1997-06-26', 'This is a book about sorcerers.', 70),
       ('The Hobbit', 'J.R.R. Tolkien', '1937-07-21', 'This is a book about hobbits.', 5),
       ('Metro 2033', 'Dmitry Glukhovsky', '2002-03-18', 'Survivors of a nuclear holocaust live and survive within the Moscoow Metro', 1),
       ('Shutter Island', 'Dennis Lehane', '2003-04-15', 'On Shutter Island, U.S. Marshal Teddy Daniels and his new partner, Chuck Aule, investigate the disappearance of a patient', 1),
       ('Eragon', 'Christopher Paolini', '2002-08-26', 'A book about a boy and his dragon friend', 121);