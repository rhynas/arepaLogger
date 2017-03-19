### Schema

CREATE DATABASE arepas_db;
USE arepas_db;

CREATE TABLE arepas(
	id INTEGER(10) AUTO_INCREMENT NOT NULL,
	arepa_name VARCHAR(80) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	date_devoured TIMESTAMP,
	PRIMARY KEY (id)
);

