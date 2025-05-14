-- drop database school;
-- create database school;
-- use school;
-- 학생, 성적 등급 테이블 생성
create table tb_grade(
	grade char(1) primary key,
    score int
);

create table tb_student(
	no int primary key,
    name varchar(20) not null,
    gender enum('F','M') not null,
    age int not null,
	grade char(1),
    foreign key(grade) references tb_grade(grade)
);

insert into tb_grade (grade, score) values
('A', 100),
('B', 80),
('C', 60),
('D', 40),
('E', 20),
('F', 0);

INSERT INTO tb_student (no, name, gender, age, grade) VALUES
    (20170001, '조이', 'F', 25, 'B'),
    (20170020, '앤드류', 'M', 26, 'B'),
    (20180800, '데이지', 'F', 24, 'A'),
    (20190123, '다나', 'F', 23, 'A'),
    (20201000, '스카이', 'M', 22, 'D');
    
select * from tb_grade;
select * from tb_student;