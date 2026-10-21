-- MySQL 8+ administration examples. Run manually with an admin account.
-- CAUTION: These commands change accounts and privileges. Replace example passwords.

CREATE USER 'clerk'@'localhost'  IDENTIFIED BY 'StrongPass#1';
CREATE USER 'analyst'@'%'        IDENTIFIED BY 'AnotherPass#2';
SELECT User, Host FROM mysql.user;      -- verify
ALTER USER 'clerk'@'localhost' IDENTIFIED BY 'NewPass#3';
DROP USER IF EXISTS 'analyst'@'%';
CREATE ROLE 'reader', 'data_entry', 'course_admin';
GRANT SELECT                 ON college.* TO 'reader';
GRANT SELECT, INSERT, UPDATE ON college.* TO 'data_entry';
GRANT ALL PRIVILEGES         ON college.* TO 'course_admin';
GRANT SELECT (Rollno, Name)  ON college.STUDENT TO 'reader';
GRANT 'data_entry' TO 'clerk'@'localhost';
SET DEFAULT ROLE ALL TO 'clerk'@'localhost';
SHOW GRANTS FOR 'clerk'@'localhost' USING 'data_entry';
REVOKE UPDATE ON college.* FROM 'data_entry';   -- affects EVERY member
REVOKE 'data_entry' FROM 'clerk'@'localhost';   -- remove the role from one user
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'course_admin';
DROP ROLE IF EXISTS 'course_admin';
CREATE INDEX idx_student_name ON STUDENT(Name);
CREATE INDEX idx_course_type  ON COURSE(Coursetype);
CREATE INDEX idx_adm_sid_date ON ADMISSION(SID, Dateofadmission);   -- composite
CREATE UNIQUE INDEX idx_course_cname ON COURSE(Cname);
SHOW INDEX FROM STUDENT;
EXPLAIN SELECT * FROM STUDENT WHERE Name = 'Ankit Sharma';   -- was it used?
DROP INDEX idx_student_name ON STUDENT;
