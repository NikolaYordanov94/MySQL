create table users (
id INT PRIMARY KEY AUTO_INCREMENT,
username varchar(30) not null,
password varchar(26) not null,
profile_picture BLOB,
last_login_time datetime,
is_deleted boolean
);

insert into users (username, password)
values
('Nikola', '12345'),
('Maria', '34563'),
('test', 'test'),
('test', 'test1'),
('Stanimir', 'great');
