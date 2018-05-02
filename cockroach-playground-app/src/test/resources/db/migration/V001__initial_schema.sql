CREATE DATABASE IF NOT EXISTS playground;

CREATE TABLE playground.user(
  id NUMERIC PRIMARY KEY UNIQUE,
  firstname TEXT NOT NULL,
  lastname TEXT,
  email TEXT
);

CREATE TABLE playground.meal(
  id NUMERIC PRIMARY KEY UNIQUE,
  dateTime TIMESTAMP DEFAULT now(),
  description TEXT,
  user_id NUMERIC REFERENCES user(id) NOT NULL
);

CREATE TABLE playground.weight(
  id NUMERIC PRIMARY KEY UNIQUE,
  dateTime TIMESTAMP DEFAULT now(),
  value FLOAT,
  user_id NUMERIC REFERENCES user(id) NOT NULL
);

