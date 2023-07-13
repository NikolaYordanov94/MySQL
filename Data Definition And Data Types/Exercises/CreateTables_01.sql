CREATE DATABASE minions;

USE minions;

CREATE TABLE minions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT NOT NULL
);

ALTER TABLE minions
MODIFY COLUMN age INT;

CREATE TABLE towns (
    town_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);