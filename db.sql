DROP DATABASE IF EXISTS Test1;
DROP DATABASE IF EXISTS Test2;

#CREATE DATABASE Test1;
#CREATE DATABASE Test2;

CREATE DATABASE IF NOT EXISTS Test1;
CREATE DATABASE IF NOT EXISTS Test2;

USE Test1;

DROP TABLE IF EXISTS movie;

CREATE TABLE IF NOT EXISTS movie
(id INT PRIMARY KEY,name varchar(30),year INT);

INSERT INTO movie (id, name, year) (%s, %s, %s)
values [(1, "ae dil hai muskil", 2014),
       (2, "jab tak hai jaan", 2014),
       (3, "dhol", 2020),
       (4, "mr. India", 2013)];


USE Test2;

DROP TABLE IF EXISTS movie;

CREATE TABLE IF NOT EXISTS movie
(id INT PRIMARY KEY,name varchar(30),year INT);

INSERT INTO movie (id, name, year) (%s, %s, %s)
values [(1, "ae dil hai muskil", 2014),
       (2, "jab tak hai jaan", 2014),
       (3, "dhol", 2020),
       (4, "mr. India", 2013)];

