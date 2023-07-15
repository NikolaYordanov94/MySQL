create database car_rental;
use car_rental;

create table categories (
id int primary key auto_increment not null,
category varchar(30) not null,
daily_rate double,
weekly_rate double,
monthly_rate double,
weekend_rate double
);

insert into `categories` (`id`, `category`)
values
('1', 'drag'),
('2', 'race'),
('3', 'drift');

create table cars (
id int primary key auto_increment not null,
plate_number varchar(30) not null,
make varchar(30),
model varchar(30),
car_year int,
category_id int,
doors int,
picture blob,
car_condition text,
available boolean
);

insert into cars (`id`, `plate_number`)
values
('1', 'RV5432SS'),
('2', 'RV5643PS'),
('3', 'SA8754FG');

create table employees (
id int primary key auto_increment not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
title varchar(30),
notes text
);

insert into employees (`id`, `first_name`, `last_name`)
values
('1', 'Velko', 'Petrov'),
('2', 'Hristo', 'Antonov'),
('3', 'Petar', 'Petrov');

create table customers (
id int primary key auto_increment not null,
driver_licence_number varchar(30),
full_name varchar(60) not null,
address varchar(100),
city varchar(50),
zip_code varchar(10),
notes text
);

insert into customers (`id`, `full_name`)
values
('1', 'Stoyan Ivanov'),
('2', 'Nikola Yordanov'),
('3', 'Dimitar Lazarov');

create table rental_orders (id int primary key auto_increment,
employee_id int not null,
customer_id int not null,
car_id int not null,
car_condition text,
tank_level varchar(20),
kilometrage_start double,
kilometrage_end double,
total_kilometrage double,
start_date date,
end_date date,
total_days int,
rate_applied double,
tax_rate double,
order_status varchar(20),
notes text
);

insert into rental_orders (`employee_id`, `customer_id`, `car_id`)
values
('1', '2', '1'),
('2', '1', '3'),
('3', '3', '2');