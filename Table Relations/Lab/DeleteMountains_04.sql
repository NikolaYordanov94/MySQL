use mountains;
drop table mountains;
drop table peaks;

CREATE TABLE mountains (
    id INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    CONSTRAINT pk_mountains_id PRIMARY KEY (id)
);

CREATE TABLE peaks (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    mountain_id INT NOT NULL,
    constraint fk_peaks_mountain_id_mountains_id
    foreign key (mountain_id)
    references mountains(id)
    on delete cascade
);

INSERT INTO mountains(`name`)
VALUES
('Rila'),
('Pirin');

INSERT INTO peaks(`name`, mountain_id)
VALUES
('Musala', 1),
('Vihren', 2);

delete from mountains
where name = 'Rila';

select * from mountains;
select * from peaks;