-- drop database mydb5;
create database mydb3;
use mydb3;
-- 1. 학생 테이블 설계
create table 학생(
	학번 int primary key,
    이름 varchar(50), 
    학년 tinyint,
    학과 varchar(50));
-- create table student(
-- 	stud_id int primary key comment '학번',
--     name varchar(10) not null,
--     grade tinyint not null comment '학년',
--     major varchar(20) not null
-- );
select * from 학생;
desc student;
show full columns from student;
-- 2. 학생 샘플 데이터 입력
insert into student(stud_id, name, grade, major) 
	values(100, '나연묵', 4, '컴퓨터'),
           (150, '정기태', 1, '산공'),
           (200, '이찬영', 3, '전기');
-- 3. 과목 테이블 설계
create table 과목(
	번호 varchar(10) primary key,
    과목이름 varchar(50),
    학점 int, 학과 varchar(50), 담당교수 varchar(50));
select * from 과목;
-- create table subject(
-- 	id char(4) primary key,
--     sub_name varchar(20) not null,
--     unit tinyint not null,
--     major varchar(20) not null,
--     professor varchar(50) not null
-- );
-- 4. 과목 샘플 데이터 입력
insert into subject(id, sub_name, unit, major, professor)
	values('C123', '프로그래밍', 3, '컴퓨터', '김성기'),
		   ('C312', '자료구조', 3, '컴퓨터', '황수찬'),
           ('C324', '파일처리', 3, '컴퓨터', '이규철'),
           ('C413', '데이터베이스', 3, '컴퓨터', '이석호'),
           ('E412', '반도체', 3, '컴퓨터', '홍봉희');
-- select * from student;
-- select * from subject;

create table `order`(
	id int primary key);
select * from `order`;

 
    