-- outer join
-- > Left join and Right join
-- Outer join = 조건에 맞지 않는 데이터도 포함,
-- 기본 테이블에 따라 Left 와 Right 로 나뉜다
use school;
-- 1. left join
-- tb_student & tb_grade
select s.no, s.name, s.grade, g.score
from tb_student as s
left join tb_grade as g 
	on s.grade = g.grade;
    
-- 2. right join(오른쪽 테이블 기준으로 결합)
-- >> 조건에 맞는 데이터가 없으면 왼쪽 테이블은 null로 채워짐
-- >> 예시 : 모든 등급을 조회하되, 해당 등급을 가진 학생이 없는 경우도 포함
select s.no, s.name, s.grade, g.score
from tb_student as s
right join tb_grade as g 
	on s.grade = g.grade;