-- MySQL 에서는 @ 기호를 사용하여 사용자 정의 변수를 선언하고 선언가능

-- score 변수에 값 선언과 초기화
SET @score = 85;

-- 변수 출력
select @score;

-- 변수에 쿼리 결과 저장하기
-- select * from tb_student;
create table students(
	id int primary key,
    name varchar(50),
    score int
    );
    
insert into students values 
(1, 'Hong', 75), 
(2, 'Kim', 55);
-- select... into @변수명, 문법을 사용하면 쿼리 결과를 변수에 저장 가능

select score into @student_score from students where id = 1;
select * from students;
select @student_score;

-- mysql 에서 if 조건문 사용 가능
-- if(조건, 참리턴값, 거짓리턴값)
select name, score,	
	if(score >= 60, 'Pass', 'Fail') as result
from students;

select 60 as result;