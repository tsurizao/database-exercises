use join_test_db;

DROP TABLE IF EXISTS roles;
CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

SELECT *
FROM roles;

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('weston', 'weston@email.com', null),
       ('dan', 'dan@email.com', 2),
       ('jan', 'jan@email.com', 2),
       ('bruh', 'bruh@email.com', 2);

SELECT * FROM users;
SELECT * FROM roles;

SELECT u.name, role_id, r.id, r.name FROM users u JOIN roles r ON u.role_id = r.id;

SELECT u.name, role_id, r.id, r.name FROM users u LEFT JOIN roles r ON u.role_id = r.id;

SELECT u.name, role_id, r.id, r.name FROM users u RIGHT JOIN roles r ON u.role_id = r.id;