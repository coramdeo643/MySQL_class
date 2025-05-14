-- MySQL 실습 과제: DDL, DML, DCL
-- 실습 1: DDL
-- 문제: 'academy' 데이터베이스를 만들어 주세요 (만약 존재 한다면 삭제하고 다시 생성) 
drop database academy;
create database academy;
use academy;
-- 문제: 'student' 테이블을 만들어 주세요 
create table student(
	id int primary key,
    name varchar(50),
    age int
);
-- 문제: 'student' 테이블에 phone 컬럼 제약 조건 VARCHAR(15)를 추가해주세요 
alter table student add column phone varchar(15);
-- 실습 2: DML
-- 문제: 데이터 (1, '김철수', 20), (2, '홍길동', 30) 를 추가해 보세요 
insert into student(id, name, age) value(1, '김철수', 20);
insert into student(id, name, age) value(2, '홍길동', 30);
-- 문제: student 에 있는 데이터를 조회 해보세요 
select * from student;
-- 문제: id=2 데이터를 삭제해 보세요 
delete from student where id = 2;
-- 실습 3: DCL
-- 문제: 로컬 호스트 'user3' 사용자를 생성해보세요 비밀번호는  password123 입니다. 
create USER 'user3'@'localhost' identified by 'password123';
-- 문제: user3 계정에 academy.student 테이블에 SELECT, INSERT, UPDATE, DELETE 권한을 주세요. 
grant select, insert, update, delete on academy.student to 'user3'@'localhost';
-- 문제: user3 계정에 academy.student 테이블에 SELECT, INSERT, UPDATE, DELETE 권한 회수 해주세요 
revoke select, insert, update, delete on academy.student from 'user3'@'localhost';
