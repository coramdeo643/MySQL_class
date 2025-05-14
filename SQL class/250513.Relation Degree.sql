use school;
-- Relation degree?
-- 사람과 여권의 관계 차수 = 1:1
create table tb_person(
	person_id int auto_increment,
    name varchar(50) not null,
    primary key(person_id)
);
create table tb_passport(
	passport_id int auto_increment,
    passport_number varchar(20) not null,
    person_id int unique,
    primary key(passport_id),
    foreign key(person_id) references tb_person(person_id)
);
insert into tb_person(name) values ('홍길동'), ('김영희'), ('이철수');
insert into tb_passport(passport_number, person_id) 
values ('P12345678', 1), ('P87654321', 2), ('P11112222', 3);

select * from tb_person;
select * from tb_passport;

-- 회사
-- 직원, 사원증

-- 대학교
-- 1:1 학생, 학적 정보

-- 상품 - 보증

-- 병원 
-- 환자 - 의료기록