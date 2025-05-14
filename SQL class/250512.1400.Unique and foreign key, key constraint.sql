use school;
-- member table design
create table member(
	id int primary key auto_increment,
    email varchar(100) unique,
    name varchar(50) not null,
    phone varchar(20) 
);

select * from member;
insert into member(email, name, phone) values
	('a@naver.com' , '홍길동', '010-1111-1111'),
    ('b@naver.com' , '김영희', '010-1111-1111'),
    ('c@naver.com' , '이철수', '010-1111-1111');   
    
-- 중복 이메일 데이터 삽입 실패(email = unique)    
insert into member(email, name, phone) values
	('aadda@naver.com' , '이순신', '010-1111-2111');
    
-- orders table
create table orders (
	id int primary key auto_increment,
    member_id int,
    order_date date,
    amount int,
    foreign key(member_id) references member (id)
);

insert into orders(member_id, order_date, amount) values
(3, '2025-05-11', 5000);
-- 데이터 삽입 불가(참조할 30번 id가 존재하지 않음)
insert into orders(member_id, order_date, amount) values
(30, '2025-05-11', 15000);

insert into orders(member_id, order_date, amount) values
(2, '2025-05-11', 25000);

select * from orders;

-- 회원 삭제시도
-- 삭제 실패(orders 테이블 member 테이블 id(3)번이 주문 정보 있어서)
-- delete from member where id = 3;
-- 먼저 orders table 3번 이력 삭제 후 member 3번 삭제 해보자
delete from orders where member_id = 3;
delete from member where id = 3;

-- 존재하지 않는 회원을 orders 테이블에 추가?
insert into orders(member_id, order_date, amount) values
	(999, '2025-05-11', 10000);
    
-- test code
select * from orders;
select * from member;
insert into orders(member_id, order_date, amount) values
(1, '2025-05-11', 5000);
delete from orders where member_id = 2;
delete from member where id = 2;
delete from member where name = '이순신';
