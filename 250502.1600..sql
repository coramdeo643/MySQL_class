-- RDBMS 안에 여러개의 DB 생성가능
-- shopdb
create database shopdb;
use shopdb;

-- 테이블 생성시 설계도 필요
create table tb_member(
	memberID char(8) not null primary key,
    memberName char(5) not null,
    memberAddr char(20)
);
-- 테이블 조회
select * from tb_member;
-- 테이블에 데이터 삽입
insert into tb_member(memberID, memberName, memberAddr)
	values ('M000001', '홍길동', '부산광역시부산진구부전동123-456'); 
INSERT INTO tb_member (memberID, memberName, memberAddr) 
	VALUES ('M000002', '김철수', '부산광역시부산진구부전동789-123');
INSERT INTO tb_member (memberID, memberName, memberAddr) 
	values ('M000003', '이영희', '부산시수영구광안동456-789');
/*
INSERT INTO tb_member (memberName, memberAddr, memberID) 
	values ('M000003', '이영희', '부산시수영구광안동456-789');    */

-- 테이블 안에 있는 데이터를 전체 삭제
delete from tb_member;
insert into tb_member(memberID, memberName, memberAddr)
	values ('M000004', '이길동', '대구광역시중구부전동323-456'),
			('M000005', '박철수', '울산광역시남구부전동489-123'),
			('M000006', '김영희', '부산광역시수영구광안동656-789'); 
select * from tb_member;
select memberID from tb_member;
select memberID, memberName from tb_member;
select * from tb_member where memberName = '이길동';
select * from tb_member where memberAddr like '부산광역시%';