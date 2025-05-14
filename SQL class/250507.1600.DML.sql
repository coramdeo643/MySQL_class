-- DML; Data Manipulation Language
-- SELECT, INSERT, UPDATE, DELETE
-- 혹시 모를 사고 예방으로 사용후 drop 은 주석 처리
-- drop database school;
create database school;
use school;
create table student(
	id int primary key,
    name varchar(50),
    age int
);
-- DML usage
-- data insert
insert into student(id, name, age) values(1, 'Kim', 20);
insert into student(id, name, age) values(2, 'Lee', 22);
-- data select 
select id, name, age from student;
select name from student;
select * from student;
-- data update
-- 데이터 수정시 가능한 조건절 명시해서 사용하자
-- update student set age = 21; 전부 다 21로 변경해주는 query
update student set age = 25 where id = 1;
update student set age = 22 where id = 2;
-- 데이터 삭제 data delete
delete from student;
delete from student where name = 'Lee';





