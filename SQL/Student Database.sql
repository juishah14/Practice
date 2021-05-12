-- https://www.youtube.com/watch?v=HXV3zeQKqGY&ab_channel=freeCodeCamp.org

DROP TABLE student IF EXISTS;

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(30) NOT NULL UNIQUE,
    major VARCHAR(15) DEFAULT 'Not Chosen'
);

-- adding column
ALTER TABLE student ADD gpa DECIMAL(2, 1);
-- remove column
ALTER TABLE student DROP COLUMN gpa;

-- dk if it matters if we use single or double quotes (think it should be single)
INSERT INTO student VALUES ("Jui Shah", "SE");
INSERT INTO student(student_name) VALUES ("Ria Shah");

UPDATE student
SET student_name = 'Ria', major = 'Bio'
WHERE student_name = 'Jui Shah' OR major = 'Biology';

-- careful! updates all rows
UPDATE student
SET major = 'Not Chosen';

-- careful! deletes all rows
DELETE FROM student;

DELETE FROM student
WHERE major = 'Arts';

-- querying
SELECT * FROM student; 

SELECT student_name, major 
FROM student
ORDER BY student_id, student_name DESC
LIMIT 5;

SELECT *
FROM student
WHERE student_name IN ('Jui', 'Ria');
