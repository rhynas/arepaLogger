### Schema

CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers(
	id INTEGER(10) AUTO_INCREMENT NOT NULL,
	burger_name VARCHAR(80) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	date TIMESTAMP,
	PRIMARY KEY (id)
);

