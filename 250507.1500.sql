-- DDL? Data Definition Language
-- DB의 구조를 만드는 명령어, 도서관의 책장을 만드는
-- create, alter, drop

-- school DB 생성 (Ctrl + Enter)
create database school;
-- school DB 사용
use school;
-- table 생성
-- name char(50) 고정 길이의 공간을 배분, 문자열 50개 들어갈수있는 공간
-- name varchar(50) 가변 길이의 공간 배분, 최대 50개 문자 가능
create table student(
	id int primary key, 
    name varchar(50),
    age int
);
-- table 구조 확인 명령어
desc student;
-- table 구조 수정
-- 추가로 column add / modify / drop
-- add
alter table student add column phone varchar(15);
-- drop
alter table student drop column phone;
-- table 삭제 
drop table student;