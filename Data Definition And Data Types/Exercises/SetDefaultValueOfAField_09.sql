alter table users
modify column last_login_time datetime default current_timestamp;