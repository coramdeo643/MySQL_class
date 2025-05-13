-- 도전 과제alter
-- 기본키, 고유키, 외래키를 설정하는 테이블 설계
-- 외래키를 설정하려면 테이블 두개가 있어야한다
-- 조에서 가장 잘한 쿼리구문을 디스코드 코드 공유방에 올리기
create table class(
	id int primary key auto_increment,
    name varchar(50),
    email varchar(50),
	score int 
);
insert into class(name, email, score) values
	('Lee', 'lee@email.com', 100),
    ('Kim', 'kim@email.com', 90),
    ('Park', 'park@email.com', 80),
    ('Oh', 'oh@email.com', 70);
create table sessions(
	id int primary key auto_increment,
    class_id int,
    session_date date,
	note text,
    foreign key (class_id) references class (id)
);
insert into sessions(class_id, session_date) values
	('1', '2025-05-12'),
    ('2', '2025-05-12'),
    ('3', '2025-05-12'),
    ('1', '2025-05-13');
select * from class;
select * from sessions;