DROP DATABASE IF EXISTS ijse;
CREATE DATABASE IF NOT EXISTS ijse;
SHOW DATABASES;
USE ijse;

DROP TABLE IF EXISTS Student;
CREATE TABLE IF NOT EXISTS Student
(
    student_id   VARCHAR(45),
    student_name VARCHAR(45),
    email        TEXT,
    contact      VARCHAR(20),
    address      TEXT,
    nic          VARCHAR(45),
    CONSTRAINT PRIMARY KEY (student_id)
);
SHOW TABLES;
DESC Student;

DROP TABLE IF EXISTS Intake;
CREATE TABLE IF NOT EXISTS Intake
(
    intake_id   VARCHAR(45),
    start_date  DATE,
    intakecol   VARCHAR(45),
    description VARCHAR(45),
    course_id   VARCHAR(45),
    CONSTRAINT PRIMARY KEY (intake_id),
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (courseId) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESC Intake;


DROP TABLE IF EXISTS Registration;
CREATE TABLE IF NOT EXISTS Registration
(
    registration_id VARCHAR(45),
    reg_date        VARCHAR(45),
    student_id      VARCHAR(45),
    intake_id       VARCHAR(45),
    CONSTRAINT PRIMARY KEY (registration_id),
    CONSTRAINT FOREIGN KEY (student_id) REFERENCES Student (student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (intake_id) REFERENCES Intake (intake_id) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESC Registration;



DROP TABLE IF EXISTS Course;
CREATE TABLE IF NOT EXISTS Course
(
    courseId    VARCHAR(45),
    course_Name VARCHAR(45),
    cost        DOUBLE,
    duration    VARCHAR(45),
    subject_id  VARCHAR(45),
    CONSTRAINT PRIMARY KEY (courseId),
    CONSTRAINT FOREIGN KEY (subject_id) REFERENCES Subject (subject_id) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESC Course;

DROP TABLE IF EXISTS Subject;
CREATE TABLE IF NOT EXISTS Subject
(
    subject_id   VARCHAR(45),
    subject_name VARCHAR(45),
    credit       DOUBLE,
    teacher_id   VARCHAR(45),
    CONSTRAINT PRIMARY KEY (subject_id),
    CONSTRAINT FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESC Subject;

DROP TABLE IF EXISTS Teacher;
CREATE TABLE IF NOT EXISTS Teacher
(
    teacher_id VARCHAR(45),
    name       VARCHAR(45),
    nic        VARCHAR(45),
    contact    VARCHAR(45),
    address    VARCHAR(45),
    CONSTRAINT PRIMARY KEY (teacher_id)
);
SHOW TABLES;
DESC Teacher;


DROP TABLE IF EXISTS Payment;
CREATE TABLE IF NOT EXISTS Payment
(
    payment_id      VARCHAR(45),
    date            DATE,
    cost            DOUBLE,
    registration_id VARCHAR(45),
    CONSTRAINT PRIMARY KEY (payment_id),
    CONSTRAINT FOREIGN KEY (registration_id) REFERENCES Registration (registration_id) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESC Payment;

/*
STUDENT
REGISTRATION
PAYMENT
COURSE
INTAKE
SUBJECT
TEACHER
*/