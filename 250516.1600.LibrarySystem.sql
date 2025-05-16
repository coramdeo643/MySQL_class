-- 데이터 베이스 생성
drop database library;
create database library;
use library;
select * from books;
select * from students;
select * from borrows;
-- 1. 도서 테이블(books)
drop table books;
drop table borrows;
create table books(
	id int primary key auto_increment,
	title varchar(255) not null,
    author varchar(255) not null,
    publisher varchar(255),
    publication_year int,
    isbn varchar(13),
    available boolean default true
);

-- 2. 학생 테이블(student)
create table students(
	id int primary key auto_increment,
    name varchar(100) not null,
    student_id varchar(20) not null unique
);

-- 3. 중간 테이블(borrows) 대출/반납/상태조회
create table borrows(
	id int auto_increment primary key,
    student_id int,
    book_id int,
	borrow_date date not null,
    return_date date,
    foreign key(book_id) references books(id),
    foreign key(student_id) references students(id)
);

INSERT INTO books (title, author, publisher, publication_year, isbn, available) VALUES
('자바 프로그래밍 입문', '김영훈', '한빛미디어', 2023, '9788968481234', TRUE),
('데이터베이스 기초', '이수진', '길벗', 2022, '9788968485678', TRUE),
('알고리즘 문제 해결', '박민수', '인사이트', 2021, '9788968489012', FALSE),
('웹 개발 입문', '최지영', '한빛아카데미', 2024, '9788968483456', TRUE),
('소프트웨어 공학', '정현우', '생능출판사', 2020, '9788970507890', FALSE);

-- 학생 샘플 데이터
INSERT INTO students (name, student_id) VALUES
('홍길동', '20230001'),
('김민서', '20230002'),
('이준호', '20230003');

-- 대출 샘플 데이터
INSERT INTO borrows (book_id, student_id, borrow_date, return_date) VALUES
(3, 1, '2025-05-01', NULL), -- 홍길동이 '알고리즘 문제 해결' 대출
(5, 2, '2025-05-03', NULL); -- 김민서가 '소프트웨어 공학' 대출
