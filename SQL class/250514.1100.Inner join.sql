-- JOIN
-- > Inner join and Outer join

-- 1. Inner join 

-- 2. Outer join
-- > Left join and right join

-- 1) Inner join (cross join) - ON 조건 없이 사용할때 Inner join을 cross join이라 부른다
-- 즉, cross join 은 inner join의 특수형태이다(많이 안씀)
select * from tb_student
join tb_grade;

select * from tb_grade;
select * from tb_student;

-- 보통 inner join 사용할때 on 조건을 설정함
-- no | name | gender | age | grade | score
select * 
from tb_student 
inner join tb_grade 
on tb_student.grade = tb_grade.grade;
-- revision
select tb_student.no, tb_student.name, tb_student.gender, tb_student.age, tb_student.grade,
		tb_grade.score
from tb_student 
inner join tb_grade 
on tb_student.grade = tb_grade.grade;
-- revision 2, 매번 테이블명.컬럼 작성하는 것은 매우 불편... --> 별칭(as) --> 줄임말 사용가능
select s.no, s.name, s.gender, s.age, s.grade, g.score
from tb_student as s
inner join tb_grade as g
on s.grade = g.grade;
-- 학생의 테이블에 grade 와 등급 테이블에 grade가 일치하는 데이터만 결합한것
