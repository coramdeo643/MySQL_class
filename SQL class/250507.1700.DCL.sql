-- DCL
-- 현재 root 계정(최고 관리자)
create database mydb2;
-- 사용자 생성 및 비밀번호 설정(로컬 컴퓨터로만 접근 가능한 계정) - mysql 5 & 8 사용방법 다름
create USER 'user1'@'localhost' identified by 'password123';
-- user1 계정에 조회 권한만 부여해보자
grant select on school.student to 'user1'@'localhost';
-- user1 계정 조회 권한 회수
revoke select on school.student from 'user1'@'localhost';
-- 원격 및 로컬에서 접근 가능한 ID 생성 및 권한 부여(원격+로컬)
create user 'user2'@'%' identified by 'password123';
create user 'user2'@'localhost' identified by 'password123';
-- 권한부여
-- school.student (insert, select, delete, update)
grant select, insert, update, delete on school.student to 'user2'@'%';
grant select, insert, update, delete on school.student to 'user2'@'localhost';
revoke delete on school.student from 'user2'@'%';