-- 대표적인 데이터 타입 사용해보기
-- 테이블 생성() - DDL
DROP DATABASE school;
CREATE DATABASE school;
USE school;
CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade TINYINT NOT NULL,
    major VARCHAR(50),
    admission_date DATE NOT NULL,
	notes TEXT
);
DESC student;
-- DML; Data Manipulation Language
SELECT * FROM student;
INSERT INTO student(student_id, name, grade, major, admission_date, notes)
	VALUES(1001,'Kim', 1, 'Computer Engineering', '2025-09-01', 'Good at programming');
INSERT INTO student(student_id, name, grade, major, admission_date, notes)
	VALUES(1002,'Lee', 2, 'Math', '2025-13-01', NULL);
-- 테이블 전체 삭제
-- DELETE FROM student;
INSERT INTO student(student_id, name, grade, major, admission_date, notes)
	VALUES(1001,'Kim', 1, 'Computer Engineering', '2025-09-01', 'Good at programming'),
		   (1002,'Lee', 2, 'Math', '2024-12-01', NULL),
           (1003,'Park', 3, 'Physics', '2023-09-01', 'Good at Quantum mechanics');
           
           
-- 과목 테이블 설계
create table subject(
	subject_id int primary key,
    subject_code char(4) not null,
    subject_name varchar(50) not null,
    professor varchar(20) not null,
    department_code char(2) not null,
    created_at datetime not null
);

desc subject;
select * from subject;
insert into subject(subject_id, subject_code, subject_name, professor, department_code, created_at)
	values(1, 'CS01', 'Database', 'KimYoung', 'CS', '2023-09-01 10:05:01');
-- TODO 수정 예정
insert into subject(subject_id, subject_code, subject_name, professor, department_code, created_at)
	values(2, 'MA01', 'calculus', 'KimCheol', 'MA', '2023-09-01 10:05:01');
-- delete from subject;

-- 수강기록 테이블 생성
create table enrollment(
	enroll_id int primary key,
    student_id int not null,
    subject_id int not null,
	score decimal(5, 2) not null,
    enroll_at datetime not null
);
select * from enrollment;
insert into enrollment(enroll_id, student_id, subject_id, score, enroll_at)
	values(1, 1001, 1, 85.50,'2023-09-01 12:00:00'),
		   (2, 1002, 1, 100.00,'2023-09-02 11:00:00');

insert into enrollment(enroll_id, student_id, subject_id, score, enroll_at)
	values(3, 1002, 2, 75.50,'2023-09-10 11:00:00');