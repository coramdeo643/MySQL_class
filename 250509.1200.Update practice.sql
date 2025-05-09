CREATE TABLE `order` (
  id INT PRIMARY KEY,
  order_name VARCHAR(20) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);

INSERT INTO `order` (id, order_name, product_name, quantity, order_date) VALUES
(1, '홍길동', '피자', 2, '2022-02-26'),
(2, '김영희', '치킨', 3, '2022-02-26'),
(3, '이철수', '햄버거', 1, '2022-02-27'),
(4, '박지민', '스테이크', 2, '2022-02-27'),
(5, '최영희', '짬뽕', 1, '2022-02-27'),
(6, '박서준', '초밥', 3, '2022-02-28'),
(7, '김민지', '파스타', 2, '2022-02-28'),
(8, '정재은', '토스트', 1, '2022-02-28'),
(9, '신은주', '감바스', 2, '2022-03-01'),
(10, '유지훈', '돈까스', 1, '2022-03-01');
select * from `order`;
-- 실습해보기
-- 1. 단일 조건 수정
-- 1.1. id = 2, quantity =4 update
update `order` 
set quantity = 4
where id = 2;
-- 1.2. id = 4, product name = pasta update
update `order` 
set product_name = '파스타'
where id =4;
-- 1.3. id = 6, order date = 25.05.09 update
update `order`
set order_date = '2025-05-09'
where id = 6;
-- 2. 복합 조건 수정
-- 2.1. 수량이 2 이상, 상품명 피자인 경우 주문자를 김철수로 변경
update `order`
set order_name = '김철수'
where quantity >= 2 and product_name = '피자';
-- 수정하기전에 반드시 같은 조건절로 select 실행하고 확인
-- select * from `order` 
-- where quantity >= 2 and product_name = '피자';
-- 2.2. 주문일이 2022-02-28 이고 상품이 초밥인 경우, 수량을 6으로 변경
select * from `order`
where order_date = '2025-05-09' and product_name = '초밥';

update `order`
set quantity = 6
where order_date = '2025-05-09' and product_name = '초밥';

-- 2.3. 수량이 2 이하이고 상품이 감바스인경우 주소를 서울시 강남구로 설정
-- 현재 address 없음, 컬럼 추가
alter table `order` 
add address varchar(100);

select * from `order`
where quantity <= 2 and product_name = '감바스';

update `order`
set address = '서울시 강남구'
where quantity <= 2 and product_name = '감바스';

-- challenge
-- 1. id가 3 부터 7인 주문들의 수량을 3으로 수정
select * from `order`
where id between 3 and 7;
update `order`
set quantity = 3
where id between 3 and 7;

-- 2. 주문일이 2022 02 26 상품명 샐러드로
select * from `order`
where order_date = '2022-02-26';
update `order`
set product_name = '샐러드'
where order_date = '2022-02-26';

-- 3. 주문자 김민지, 수량 3, 주소를 경기도 수원시
select * from `order`
where order_name = '김민지' and quantity = 3;
update `order`
set address = '경기도 수원시'
where order_name = '김민지' and quantity = 3;

-- 4. 문제 스스로 하나 만들어서 풀기
-- 주문일자 2022년도 & 주소 없으면 --> 주소 부산시 부산진구로 수정, 
select * from `order`
where order_date like '2022%' and address is null;

update `order`
set address = '부산시 부산진구'
where order_date like '2022%' and address is null;

select * from `order`;
-- 1번과 5번의 주소를 각각 경상도 양산시, 부산시 연제구
-- 정한 뒤, 도시 단위가 'OO시 OO구'인 사람만 출력해주세요
select * from `order`
where id = 1 or id = 5;
update `order`
set address = '경상도 양산시' 
where id = 1;
update `order`
set address = '부산시 연제구' 
where id = 5;
select * from `order`
where address like '%시%%구%';
-- 수량이 2이거나 상품명이 '햄버거'인 경우, 주문일을 '2022-02-25'로 변경
select * from `order`
where quantity = 2 or product_name = '햄버거';
update `order`
set order_date = '2022-02-25'
where quantity = 2 or product_name = '햄버거';
-- ID가 5인 주문자의 이름을 ‘잠온다’로 변경하고, 상품명을 ‘집’으로 변경
select * from `order`
where id = 5;
update `order`
set order_name = '잠온다'
where id = 5;
update `order`
set product_name = '집'
where id = 5;
-- 이름에 "희"가 들어가고 quantity가  2일경우 상품을 햄버거로 변경
select * from `order`
where order_name like '%희%' and quantity = 2;
update `order`
set product_name = '햄버거'
where order_name like '%희%' and quantity = 2;