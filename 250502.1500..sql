-- 데이터 베이스 생성
create database db_tenco;

-- DB 에서 최소의 정보 단위는 테이블이다

-- 테이블 생성하기(column 명과 제약사항을 지정한다)
create table userTBL(
	userName char(3) not null primary key,
    birthYear int not null,
    addr char(2) not null,
    mobile char(12)
);

-- 테이블 정보를 출력해주는 쿼리 구문
show tables;

-- 테이블 조회
select * from userTBL;

-- 구매 테이블 만들기
create table buyTBL(
	id int not null auto_increment,
    userName char(3) not null,
    prodName char(3) not null,
    price int not null,
    primary key(id),
    foreign key(userName) references usertbl(userName)
);

show tables;
select * from buyTBL;

-- 테이블의 상세정보 보기
desc buyTBL;