-- school
use school;
-- 메뉴 테이블 만들기
create table menu(
	id int primary key auto_increment,
    name varchar(50),
    price int,
    category varchar(20));
    
select*from menu;
insert into menu(name, price, category) values('Americano', 2000, 'Coffee');
-- 가격 수정 기능
update menu set price = 3000 where name = "Today's coffee";
-- 가격 삭제
delete from menu where name = ?;