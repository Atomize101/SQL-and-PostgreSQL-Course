// Creating new database which is users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50)
);

INSERT INTO users(username)
VALUES
('monahan93'),
('pferrer'),
('si93onis'),
('99stroman');

SELECT * FROM users;

// Creating photo DB that relates with the users DB

CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id)
);

INSERT INTO photos (url, user_id)
VALUES
('http://one.jpg', 4);

SELECT * FROM photos;

INSERT INTO photos (url, user_id)
VALUES
('http://two.jpg', 1),
('http://three.jpg', 1),
('http://25.jpg', 1),
('http://36.jpg', 2),
('http://blah.jpg', 3),
('http://256.jpg', 4);

SELECT * FROM photos;

// Find all the photos created by user with ID 4

SELECT * FROM photos WHERE user_id = 4;

// Using a JOIN statement
SELECT url, username FROM photos
JOIN users ON users.id = photos.user_id;

// Foreign key CONSTRAINT

INSERT INTO photos (url, user_id)
VALUES ('http://test.jpg', 9999);
// Gives error, violates foreign key constraint

// Null VALUE to get past the constraint

INSERT INTO photos (url, user_id)
VALUES ('http://test.jpg', NULL);

// DELETE

// Gives error DELETE restrict
DELETE FROM users
WHERE id = 1;

// DELETE CASCADE
