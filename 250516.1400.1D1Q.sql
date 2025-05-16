-- 1Day1Query
-- 
select department,
	case when department = '개발' then 'D' 
		 when department = '영업' then 'S' 
		 when department = '마케팅' then 'M' 
		 when department = '인사' then 'H' end as in_eng
from tb_employees
group by department;

-- tb_employees 테이블에서 각 부서의 이름을 추출하여, 
-- '개발' = 'D', '영업' = 'S', '마케팅' = 'M', '인사' = 'H'로 
-- 변환(case when then end) 후 출력해주세요.
-- 최종 결과는 각 부서별로 그룹화(group by)되어 나타나야 하며, 
-- 원래 부서명은 'department' 컬럼으로, 
-- 변환된 영어 약어는 'in_eng' 컬럼으로 표시되어야 합니다.

-- employees 테이블과 salaries 테이블을 직원 번호(emp_no)를 기준으로 조인(inner join)하여, 
-- 각 직원의 사번과 성(last_name) 그리고 해당 직원의 역대 최고 연봉(max_salary)을 조회하는 SQL 쿼리를 작성하세요. 
-- 결과는 직원 사번별로 그룹화(group by)되어야 하며, 조회 결과의 처음 5건만(limit 5) 출력되어야 합니다. 
-- 결과 컬럼명은 각각 emp_no, last_name, max_salary로 나오게 해주세요.

select e.emp_no, e.last_name,
	max(s.salary) as max_salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no
group by e.emp_no
limit 5;

-- any
SELECT gender
FROM employees 
WHERE emp_no = ANY (SELECT emp_no FROM dept_manager WHERE to_date like '9999%');

select * from employees;
