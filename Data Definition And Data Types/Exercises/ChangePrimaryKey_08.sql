alter table users
modify column id int;

alter table users
drop primary key,
add constraint pk_users2
primary key (id, username);