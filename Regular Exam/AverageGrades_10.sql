DELIMITER $$
CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS decimal(5, 2)
DETERMINISTIC

BEGIN
  RETURN (SELECT 
    AVG(sc.grade)
FROM
    students_courses AS sc
        JOIN
    courses AS c ON sc.course_id = c.id
        JOIN
    students AS s ON sc.student_id = s.id
WHERE
    c.`name` = course_name
        AND s.is_graduated = 1);
END $$
DELIMITER ;

drop function udf_average_alumni_grade_by_course_name;

SELECT 
    c.name,
    UDF_AVERAGE_ALUMNI_GRADE_BY_COURSE_NAME('Quantum Physics') AS average_alumni_grade
FROM
    courses c
WHERE
    c.name = 'Quantum Physics';
