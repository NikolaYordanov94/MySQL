use minions;

UPDATE users
SET username = 'testt'
WHERE id = 4;

alter table users
drop primary key,
add constraint pk_users primary key (id),
modify column username varchar(30) unique;


