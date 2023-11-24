CREATE DATABASE movie_data;

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    genre VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    runtime INTEGER NOT NULL,
    plot TEXT NOT NULL
);

CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL
);

CREATE TABLE movie_actors (
    movie_id INTEGER REFERENCES movies(id),
    actor_id INTEGER REFERENCES actors(id),
    PRIMARY KEY (movie_id, actor_id)
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(id),
    rating INTEGER NOT NULL,
    review TEXT NOT NULL
);