-- UNION
-- 두 테이블의 모든 데이터를 포함하며, 조건이 맞지 않는 경우 null 채움
-- MYSQL 은 Full join 지원하지 않기떄문에 UNION으로 결합
-- LEFT JOIN과 RIGHT JOIN을 UNION으로 결합
-- use school;
select s.no, s.name, s.gender, g.score, g.grade
from tb_student as s
left join tb_grade as g
	on s.grade = g.grade
union
select s.no, s.name, s.gender, g.score, g.grade
from tb_student as s
right join tb_grade as g
	on s.grade = g.grade;
-- where s.grade is null; >> 기본값
-- where s.grade is not null; >> without null values