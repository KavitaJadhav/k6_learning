CREATE DATABASE user_service;

SHOW DATABASES;

USE user_service;

CREATE TABLE users
(
  id              INT unsigned NOT NULL AUTO_INCREMENT,
  first_name            VARCHAR(150) NOT NULL,
  last_name           VARCHAR(150) NOT NULL,
  PRIMARY KEY     (id)
);

SHOW TABLES;

INSERT INTO users ( first_name, last_name) VALUES
( 'Kavita', 'Jadhav' ),
( 'Jyoti', 'Jadhav');

SELECT * FROM users;