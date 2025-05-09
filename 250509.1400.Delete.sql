CREATE TABLE product (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  description VARCHAR(200)
);

INSERT INTO product (id, name, price, description) VALUES
(1, '아이폰 13', 1300000, 'Apple의 최신 모델 스마트폰'),
(2, '갤럭시 S21', 1200000, '삼성의 최신 모델 스마트폰'),
(3, '맥북 에어', 1500000, 'Apple의 대표적인 노트북'),
(4, 'LG 그램', 1300000, 'LG전자의 대표적인 노트북'),
(5, '아이패드', 800000, 'Apple의 태블릿'),
(6, '갤럭시 탭', 700000, '삼성의 태블릿'),
(7, '애플 워치', 500000, 'Apple의 스마트 워치'),
(8, '갤럭시 워치', 400000, '삼성의 스마트 워치'),
(9, '에어팟 프로', 300000, 'Apple의 무선 이어폰'),
(10, '갤럭시 버즈', 200000, '삼성의 무선 이어폰');

-- 1. 기본 삭제
-- 1.1. id=2 삭제
select * from product
where id = 2 ;

delete from product 
where id = 2 ;
-- 1.2. 가격이 100만원 이상인 상품들만 삭제
select * from product
where price >= 1000000;

delete from product
where price >= 1000000;
-- 1.3. 삭제 : 상품 설명에 Apple 단어가 포함되지 않는 상품만
select * from product
where not (description like 'Apple%');

delete from product
where not (description like 'Apple%');
-- 2. 복합 조건
-- delete from product;
-- 2.1. 가격이 50만원 이하이고 상품 설명에 '스마트'가 포함된 상품들만 삭제
select * from product
where price <= 500000 and description like '%스마트%';

delete from product
where price <= 500000 and description like '%스마트%';
-- 2.2 상품명에 갤럭시 시작, 가격이 1000000이상 상품
select * from product
where nake like '갤럭시%' and price >= 1000000;
delete from product
where nake like '갤럭시%' and price >= 1000000;

-- 1 가격이 30만원 이하 상품 삭제
select * from product
where price <= 300000;
delete from product
where price <= 300000;
-- 2. 상품명이 아이폰 또는 아이패드 삭제
select * from product
where name like '아이폰%' or name like '아이패드%';
delete from product
where name like '아이폰%' or name like '아이패드%';
-- 3. 가격이 100만원 마만, 설명에 삼성 포함 삭제
select * from product
where price <= 1000000 and description like '%삼성%';
delete from product
where price <= 1000000 and description like '%삼성%';