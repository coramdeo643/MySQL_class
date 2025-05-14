CREATE TABLE tb_grade (
    grade CHAR(1) PRIMARY KEY,
    score INT
);

CREATE TABLE tb_student (
    no INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    gender ENUM('F', 'M') NOT NULL,
    age INT,
    grade CHAR(1),
    FOREIGN KEY (grade) REFERENCES tb_grade(grade)
);

-- 테이블 구조 확인 및 기존 데이터 삭제처리 
-- delete from tb_student;
select * from tb_student;
select * from tb_grade;

INSERT INTO tb_student (no, name, gender, age, grade) VALUES
    (20170001, '조이', 'F', 25, 'B'),
    (20170020, '앤드류', 'M', 26, 'B'),
    (20180800, '데이지', 'F', 24, 'A'),
    (20190123, '다나', 'F', 23, 'A'),
    (20201000, '스카이', 'M', 22, 'D'),
    (20210001, '제임스', 'M', 21, NULL);  -- 등급이 없는 학생 추가
    
-- 1. 
select s.name, s.age, s.grade, g.score
from tb_student as s
inner join tb_grade as g
	on s.grade = g.grade
where s.grade = 'A' or s.grade = 'B';

-- 2.
select s.name, s.grade, g.score
from tb_student as s
left join tb_grade as g 
	on s.grade = g.grade
where s.gender = 'F';

-- 3.
select s.name, s.age, s.grade, g.score
from tb_student as s
left join tb_grade as g 
	on s.grade = g.grade
where s.age >= 24;

-- 4.
select s.name, s.grade, g.score
from tb_student as s
right join tb_grade as g 
	on s.grade = g.grade
where g.score >= 60;

-- 5. 
select s.name, s.grade, g.score
from tb_student as s
inner join tb_grade as g
	on s.grade = g.grade;
    
select s.name, s.grade, g.score
from tb_student as s
left join tb_grade as g
	on s.grade = g.grade;
    
-- 6.
select s.name, g.grade, s.age
from tb_student as s
right join tb_grade as g 
	on s.grade = g.grade;

