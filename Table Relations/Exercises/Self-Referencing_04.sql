use geography;

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT UNIQUE,
    `name` VARCHAR(50) NOT NULL,
    manager_id INT
)  AUTO_INCREMENT=101;

INSERT INTO teachers (`name`, manager_id)
VALUES
('John', NULL),
('Maya', 106),
('Silvia', 106),
('Ted', 105),
('Mark', 101),
('Greta', 101);

ALTER TABLE teachers
ADD CONSTRAINT pk_teacher_id PRIMARY KEY (teacher_id),
ADD CONSTRAINT fk_manager_id FOREIGN KEY (manager_id)
REFERENCES teachers(teacher_id);