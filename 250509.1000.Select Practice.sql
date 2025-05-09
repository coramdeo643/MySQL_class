CREATE TABLE student (
    student_id INT PRIMARY KEY COMMENT '학번',
    name VARCHAR(50) NOT NULL COMMENT '이름',
    grade INT NOT NULL COMMENT '학년',
    major VARCHAR(100) NOT NULL COMMENT '학과'
) COMMENT = '학생 정보 테이블';
select * from student;

-- student 샘플 데이터 
INSERT INTO student (student_id, name, grade, major)
VALUES
  (2, '박영희', 2, '경영학과'),
  (3, '이민수', 4, '전자공학과'),
  (4, '홍길동', 1, '디자인학과'),
  (5, '임성민', 3, '컴퓨터공학과'),
  (6, '한지원', 2, '경영학과'),
  (7, '박준형', 4, '전자공학과'),
  (8, '김민지', 1, '디자인학과'),
  (9, '이현수', 3, '컴퓨터공학과'),
  (10, '정미경', 2, '경영학과'),
  (11, '김성진', 4, '전자공학과'),
  (12, '임승환', 1, '디자인학과');
  
  -- WHERE 사용해보기 
SELECT * FROM student;
-- student 테이블 에서 학과가 '컴퓨터공학과' 학생들에 이름과 학번을 조회하고 싶을 때 
-- 사용하는 쿼리문 작성해 보자. 
select student_id, name
from student
where major = '컴퓨터공학과';
-- student 
-- 1. grade가 3인 학생들 조회 하기 (특정 데이터를 지정하지 않으면 전부 출력 - 컬럼)
select *
from student
where grade = 3;
-- 2. 이름이 홍길동인 학생 조회 하기 
select *
from student
where name ='홍길동';
-- 3. 학번이 1부터 10까지인 학생들 조회하기 (between )
select *
from student
where student_id between 1 and 10;
-- 4. 학과가 컴퓨터 공학과 그리고, 학년이 2학년인 학생들만 조회 해줘 
select *
from student
where major = '컴퓨터공학과' and grade = 2;
-- 5. 학과가 컴퓨터공학과 이거나(또는) 학년이 2학년인 학생들을 조회 해주세요 
select *
from student
where major = '컴퓨터공학과' or grade = 2;
-- 6. 학생 이름이 홍길동이 아닌 학생들을 조회해주세요
select *
from student
where name != '홍길동';
-- 7. 학생들의 학년이 2학년 이상인 사람들을 조회 
select *
from student
where grade >= 2;
-- 8. 학생들의 학년이 2학년 미만인 사람들을 조회 
select *
from student
where grade < 2;
-- 9. 학년이 1학년 이거나 3학년인, 4학년 학생들 조회하기 
-- IN 으로 사용 
select *
from student
where grade in (1, 3, 4);
-- + 스스로 문제 만들고 풀기
-- 이름에 '민'이 들어가는 학번, 학생이름, 전공 조회
select student_id, name, major
from student
where name like '%민%';