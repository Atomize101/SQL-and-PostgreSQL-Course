// Creating the table

CREATE TABLE cities (
	name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

// Inserting values into the table but values must line up to the table columns
INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);

// You can insert multiple rows like this below
INSERT INTO cities (name, country, population, area)
VALUES
('Delhi', 'India', 28125000, 2240),
('Shanghai', 'China', 22125000, 4015),
('Sao Paulo', 'Brazil', 20935000, 3043);

// This will retrieve all the records from the table cities
SELECT * FROM cities;

// This will retrieve just the name and country from cities
SELECT name, country FROM cities

// This will show the same values from the names columns
SELECT name, name, name FROM cities

// Practice

-- You don't need to change these lines
CREATE TABLE movies (
    title VARCHAR(60),
    box_office INTEGER
);

INSERT INTO movies (title, box_office)
VALUES 
    ('The Avengers', 1500000000),
    ('Batman v Superman', 873000000);
    

-- WRITE YOUR SOLUTION BELOW THIS LINE!
    SELECT title, box_office from movies


// Calculating columns
SELECT name, population / area FROM cities;

// Other math operators. +, -, *, /, ^ exponent, |/ Square Root,  @ absolute value, % remainder

// This is how to rename a calculated column
SELECT name, population / area as population_density
FROM cities;

// Practice

SELECT name, price * units_sold as revenue from phones;

// Using strings
SELECT name || country FROM cities;
// This gives a name, then a comma and a space
SELECT name || ', ' || country FROM cities;
SELECT name || ', ' || country AS location FROM cities;
// Same thing but with CONCAT

SELECT CONCAT(name, ', ', country) as location FROM cities;

// LOWER() or UPPER()

SELECT CONCAT(UPPER(name), ', ', UPPER(country)) as location FROM cities;

SELECT UPPER(CONCAT(name, ', ', country)) as location FROM cities;

// Filtering rows with WHERE
// When looking at this query, think of FROM first, then WHERE, then finally name
SELECT name, area FROM cities WHERE area > 4000;

// Some comparison example
SELECT name, area FROM cities WHERE area = 8223;
SELECT name, area FROM cities WHERE area != 8223;
SELECT name, area FROM cities WHERE area <> 8223;

// Between operator
SELECT name, area FROM cities WHERE area BETWEEN 2000 and 4000;

// IN AND NOT IN
SELECT name, area FROM cities WHERE name IN ('Delhi', 'Shanghai');

SELECT name, area FROM cities WHERE name NOT IN ('Delhi', 'Shanghai');

SELECT name, area FROM cities WHERE area NOT IN (3043, 8223);

// Multiple operators in 1 WHERE

SELECT name, area FROM cities WHERE area NOT IN (3043, 8223) AND name = 'Delhi';
SELECT name, area FROM cities WHERE area NOT IN (3043, 8223) OR name = 'Delhi';
SELECT name, area FROM cities WHERE area NOT IN (3043, 8223) OR name = 'Delhi' OR name = 'Tokyo';


// Practice

SELECT name, price FROM phones WHERE units_sold > 5000;

// Updating Rows

UPDATE cities SET population = 39505000 WHERE name = 'Tokyo';
SELECT * FROM cities;

// Delete rows

DELETE FROM cities WHERE name = 'Tokyo';

INSERT INTO cities (name, country, population, area) VALUES ('Tokyo', 'Japan', 38505000, 8223);

