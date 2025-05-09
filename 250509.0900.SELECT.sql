-- drop database mydb;
create database mydb;
use mydb;
-- 고객 테이블 설계
create table customer(
	id int primary key auto_increment,
    -- auto_increment : 자동으로 순차번호 생성해줌
    name varchar(50),
    email varchar(50),
    address varchar(100)
);
select * from customer;
insert into customer(name, email, address)
	values('김철수', 'kim@example.com', '서울시 강남구'),
		   ('박영희', 'park@example.com', '서울시 서초구'),
		   ('이민수', NULL, '경기도 성남시'),
		   ('최영진', 'choi@example.com', '서울시 송파구'),
		   ('한미영', 'han@example.com', '경기도 수원시'),
		   ('강종현', 'kang@example.com', '서울시 강서구');

-- WHERE practice
-- 1. 기본 조회
-- 1.1. 서울시 강남구에 사는 고객 조회
select *
from customer
where address = '서울시 강남구';
-- 1.2. email = null 고객 조회
select *
from customer
where email is null;
-- null 조회시 (=) 으로는 비교 불가, IS NULL / IS NOT NULL 사용해야함
-- 1.3. name = 박영희
select *
from customer
where name = '박영희';
-- 2. 복합 조회
-- 2.1. 서울시에 사는 ID 3 이상인 고객 조회
select *
from customer
where address like '서울시%' 
and id >= 3;
-- 2.2. 서울시 또는 경기도에 사는 고객을 조회
select *
from customer
where address like '서울%' 
or address like '경기%';
-- 3. 특수 연산자
-- 3.1. ID가 2 ~ 5 인 고객 조회
select *
from customer
-- where id >= 2 and id <= 5;
where id between 2 and 5;
-- 3.2. 강남구, 서초구, 송파구에 사는 고객 조회
select *
from customer
-- where address = '서울시 강남구' or address = '서울시 서초구' or address = '서울시 송파구';
where address in ('서울시 강남구', '서울시 서초구', '서울시 송파구');
-- 3.3. email is not null 고객 조회
select *
from customer
where email is not null;