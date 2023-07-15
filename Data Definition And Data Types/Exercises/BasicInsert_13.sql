create database soft_uni;
use soft_uni;

create table towns (
id int primary key auto_increment not null,
`name` varchar(60) not null
);

insert into `towns` (`id`, `name`)
values
('1', 'Sofia'),
('2', 'Plovdiv'),
('3', 'Varna'),
('4', 'Burgas');

create table addresses (
id int primary key auto_increment not null,
address_text varchar(100) not null,
town_id int,
foreign key (town_id)
references towns(id)
);

insert into `addresses` (`id`, `address_text`)
values
('1', 'Stara Planina 15'),
('2', 'Cherni Vrah 18'),
('3', 'Car Boris 6'),
('4', 'Aleksandar Veliki 16');

create table departments (
id int primary key auto_increment not null,
`name` varchar(60) not null
);

insert into `departments` (`id`, `name`)
values
('1', 'Engineering'),
('2', 'Sales'),
('3', 'Marketing'),
('4', 'Software Development'),
('5', 'Quality Assurance');

create table employees (
id int primary key auto_increment,
first_name varchar(20) not null,
middle_name varchar(20) not null,
last_name varchar(20) not null,
job_title varchar(20) not null,
department_id int,
hire_date date,
salary double,
address_id int,
foreign key (department_id)
references departments(id),
foreign key (address_id)
references addresses(id)
);

insert into `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
values
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);

