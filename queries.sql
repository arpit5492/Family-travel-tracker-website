-- ALL THE QUERIES THAT ARE USED IN THE PROJECT 

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) UNIQUE NOT NULL,
user_id INTEGER UNIQUE REFERENCES users(id)
);

INSERT INTO users (name, color)
VALUES ('John', 'teal'), ('Jack', 'blue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('FR', 1), ('GB', 1), ('CA', 2), ('FR', 2 );