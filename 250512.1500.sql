use school;
select * from member;
select * from orders;

-- (현재 상태) 외래키 설정 되어있음

-- 기존에 있던 외래키 삭제하기
-- 1. 테이블을 drop하고 다시 작성
-- 2. 기존에 있던 외래키만 삭제 가능

-- 테이블 구조를 변경하는 SQL 3가지 종류 [DDL], DML, DCL
alter table orders 
drop foreign key orders_ibfk_1;

insert into orders(member_id, order_date, amount)
values(999, '2025-05-11', 10000);

-- 테이블 생성후 외래키를 설정하는 방법
alter table orders 
add constraint fk_member 
foreign key (member_id) references member (id)
on delete cascade on update cascade;
-- cascade 추가해보기
-- orders 테이블에 회원이 주문한 정보가 있을때, member 테이블에 회원정보를 삭제(업데이트)할 때 바로 삭제가 안됬음
-- 그래서 orders 테이블에 정보를 삭제하고나서야 member 회원정보를 삭제할수있었음
-- 매번 일일이 삭제하고 삭제하고 하지말고 한방에! = cascade
delete from orders where member_id = 999;
select * from orders;
select * from member;
delete from member where id = 1;

-- member 테이블 이미 생성되어있음, 추가로 unique 설정해보자(새로운 컬럼생성과 동시에 추가)
alter table member
add column city varchar(50),
add column zipcode varchar(10),
add constraint unique_city_zip unique(city, zipcode);

desc member;

insert into member(email, name, phone, city, zipcode) 
values('c@nate.com', '유관순', '010-1234-1234', '부산','464-1233');
insert into member(email, name, phone, city, zipcode) 
values('d@nate.com', '유관순2', '010-1234-1234', '부산','464-1233');
insert into member(email, name, phone, city, zipcode) 
values('t@nate.com', '유관순3', '010-1234-1234', '부산','464-1233');










