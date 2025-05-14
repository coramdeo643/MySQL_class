-- drop database school;
-- create database school;
-- use school;

-- Index?
-- 1. 기본키, 고유키 사용시 자동으로 인덱스가 생성됨(primary, unique)
-- 2. 필요시 직접 인덱스를 설정가능(SELECT, 데이터 엄청 많은 테이블, 수정이 적은 테이블)

-- 2.1. 테이블 생성시 인덱스를 설정하는방법?
create table student(
	id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) not null,
    english_score int not null,
    index idx_major(major) 
);
-- 2.2. 기존 테이블에 인덱스를 추가?
alter table student
add index idx_grade(grade);

-- 2.3. 복합 인덱스 생성 : 여러 열을 조합한 인덱스
create index idx_grade_major on student(grade, major);

-- 2.4. 인덱스 확인
show index from student;

-- 2.5. 인덱스 삭제
drop index idx_grade on student;

INSERT INTO student (id, name, grade, major, english_score) VALUES
(1, '홍길동', 1, '컴퓨터공학과', 85),
(2, '김영희', 2, '경영학과', 90),
(3, '이철수', 3, '컴퓨터공학과', 78),
(4, '박민지', 1, '디자인학과', 92),
(5, '최재영', 4, '전자공학과', 88),
(6, '강영식', 2, '컴퓨터공학과', 95);

select * from student;
