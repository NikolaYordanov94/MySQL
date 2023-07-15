create database Movies;
use Movies;

create table directors (
id int primary key auto_increment,
director_name varchar(50) not null,
notes text
);

insert into directors (director_name)
values 
('test'),
('test1'),
('test2'),
('test3'),
('test4');


create table genres (
id int primary key auto_increment,
genre_name varchar(20) not null,
notes text
);

insert into genres (genre_name)
values 
('test'),
('test1'),
('test2'),
('test3'),
('test4');


create table categories (
id int primary key auto_increment,
category_name varchar(20) not null,
notes text
);

insert into categories (category_name)
values 
('test'),
('test1'),
('test2'),
('test3'),
('test4');

create table movies (
id int primary key auto_increment,
title varchar(50) not null,
director_id int,
copyright_year date,
length double (10, 2),
genre_id int,
category_id int,
rating double(5, 2),
notes text,
foreign key fk_movies_directors(director_id)
references directors(id),
foreign key fk_movies_genres (genre_id)
references genres(id),
foreign key fk_movies_categories (category_id)
references categories (id)
);

insert into movies (title, director_id, genre_id, id)
values 
('test', 1, 2, 3),
('test1', 1, 2, 5),
('test2', 1, 2, 4),
('test3', 1, 2, 2),
('test4', 1, 2, 1);






