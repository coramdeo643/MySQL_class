use employees;
-- INNER JOIN을 사용하여, 
-- title이 Senior Engineer이고, first_name이 'ram'으로 시작하고, salary가 100000 이상인,
-- 모든 직원의 emp_no, first_name, salary, title을 조회하세요.
select e.emp_no, e.first_name, s.salary, t.title
from employees as e
inner join salaries as s on e.emp_no = s.emp_no
inner join titles as t on e.emp_no = t.emp_no
where t.title = 'Senior Engineer' and e.first_name like 'ram%' and s.salary > 100000;

select * from employees;
-- title 이 staff 인 사원의 번호 , 전체 이름을 가져오시오 단 중복 없이 
select e.emp_no, e.first_name, e.last_name
from employees as e
inner join titles as t on e.emp_no = t.emp_no
where t.title = 'Staff';