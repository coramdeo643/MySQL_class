-- 데이터베이스 생성
CREATE DATABASE shop;
USE shop;

-- 회원 테이블 생성 (PRIMARY KEY, UNIQUE KEY 사용)
CREATE TABLE member (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(100) UNIQUE,
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  join_date DATE NOT NULL
);

-- 상품 테이블 생성 (PRIMARY KEY 사용)
CREATE TABLE product (
  product_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  stock INT NOT NULL
);

-- 주문 테이블 생성 (FOREIGN KEY 사용)
CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  member_id INT,
  product_id INT,
  quantity INT NOT NULL,
  order_date DATE NOT NULL,
  FOREIGN KEY (member_id) REFERENCES member(id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 회원 데이터 삽입
INSERT INTO member (email, name, phone, join_date) VALUES
('hong@test.com', '홍길동', '010-1234-5678', '2023-01-15'),
('kim@test.com', '김영희', '010-2345-6789', '2023-02-20'),
('lee@test.com', '이철수', '010-3456-7890', '2023-03-10');

-- 상품 데이터 삽입
INSERT INTO product (product_id, name, price, stock) VALUES
(1, '노트북', 1500000, 50),
(2, '스마트폰', 800000, 100),
(3, '헤드폰', 200000, 200);

-- 주문 데이터 삽입
INSERT INTO orders (member_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2023-04-01'),
(2, 2, 2, '2023-04-02'),
(3, 3, 3, '2023-04-03');

-- ## user 테이블 설계

-- 다음 조건을 만족하는 user 테이블을 생성하세요.

-- - id: 기본 키, 자동 증가
-- - username: 고유해야 함
-- - email: 고유해야 함
-- - password: 필수 입력
-- - created_at: 현재 시간 기본값 설정
create table user(
	id int primary key auto_increment,
    username varchar(20) unique,
    email varchar(50) unique,
    password varchar(50) not null,
    created_at timestamp
);
drop table user;

create table user(
	id int primary key auto_increment,
    username varchar(50) unique,
    email varchar(100) unique,
    password varchar(100) not null,
    created_at timestamp default current_timestamp
);

insert into user(username, email, password)
values('Hong', 'abc@kakao.com', 'asd123');

select * from user;

create table category(
	category_id int primary key auto_increment,
    name varchar(50) not null
);

alter table product
add column category_id int;

alter table product
add constraint cotegory_id
foreign key (category_id) references category(category_id);

alter table orders
add index idx_order_date (order_date);

-- select * from category;
insert into category(name)
values ('전자제품'),
		('가전제품');
        
update product
set category_id = '1';

select * from product;

insert into member(email, name, phone, join_date)
values ('park@test.com', '박민지', '010-4567-8901', '2023-04-05');

select * from member
where join_date > '2023-03-31';

select * from product
where price > 500000;

update member
set phone = '010-9999-0000'
where name = '이철수';
-- select * from member;

select * from product;
update product
set price = price + (price/10)
where stock < 100;

select * from orders;
delete from orders
where order_date < '2023-04-01';

delete from product
where stock = 0;

insert into member(email, name, phone, join_date)
values ('park@test.com', '박민지', '010-4567-8901', '2023-04-05');

INSERT INTO orders (member_id, product_id, quantity, order_date) VALUES
(111, 1, 1, '2023-04-01');

create index idx_member_id_order_date on orders(member_id, order_date);
show index from orders;

create user 'user101'@'localhost' identified by 'asd123';
grant select on shop.orders to 'user101'@'localhost';
show processlist;
revoke select on shop.orders from 'user101'@'localhost';

select * from member;
select * from product;
select * from orders;
show index from orders;

create table movies(
	id int primary key auto_increment,
    title varchar(50) not null,
    director varchar(20) not null,
    release_date date not null,
    genre varchar(20) not null,
    rating double not null
);
select * from movies;
insert into movies(title, director, release_date, genre, rating) values 
('괴물', '봉준호', '2006-07-27', '드라마', 8.28),
('극한직업', '이병헌', '2019-01-23', '코미디', 9.20),
('명량', '김한민', '2014-07-30', '사극', 9.17),
('신과함께-죄와벌', '김용화', '2017-12-20', '판타지', 7.56),
('밀양', '임권택', '2016-09-07', '드라마', 7.76),
('반도', '연상호', '2020-07-15', '액션', 6.71),
('베테랑', '류승완', '2015-08-05', '액션', 8.49),
('변호인', '양우석', '2013-12-18', '드라마', 8.41),
('군함도', '류승완', '2017-07-26', '사극', 8.01),
('암살', '최동훈', '2015-07-22', '액션', 8.37);

-- index add
alter table movies
add index idx_genre (genre);
-- 복합 index create
create index idx_director_genre on movies(director, genre);
-- index show
show index from movies;
-- index drop
drop index idx_director_genre on movies;
-- insert new movie
insert into movies(title, director, release_date, genre, rating) values 
('Seven veils', 'Atom egoian', '2025-05-14', '드라마', 9.99);
-- update the new movie
update movies
set director = 'Atom'
where director = 'Atom egoian';
-- select movies after 2010 
select * from movies
where release_date > '2010-12-31';
-- select movies rating over 9
select * from movies
where rating > 9;
-- select movies rating under 8
select * from movies
where rating < 8;