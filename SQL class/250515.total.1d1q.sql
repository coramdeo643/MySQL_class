-- 1. 사번(emp_no), 이름(first_name), 성(last_name), 직책(title), 연봉(salary)을 한 화면에 보여주세요.
-- 단, 사번이 중복해서 표시되지 않게 해주세요.


-- 2. 직원중 성별이 여자 이면서 고용일(hire_date)이 1991년도 이상인 사람을 날짜 순서대로 출력하시오.


-- 3. 최연소 입사자를 연봉이 높은 순서대로 출력하시오.


-- 4. NNER JOIN을 사용하여, title이 Senior Engineer이고, first_name이 'ram'으로 시작하고, salary가 100000 이상인,
--   모든 직원의 emp_no, first_name, salary, title을 조회하세요.


-- 5. 직원의 사원번호, 성, 직급, 직급 시작일자, 직급 종료일자를 조회하세요.
-- inner join을 사용
-- first_name 'S'로 시작하고, title이 Senior Engineer이고, 직급 종료 일자가 '1990-01-01' 이하인 직원


-- 6. 1960년도에 태어난 여성인 직원을 조회하세요.
select * 
from 

-- 7. J로 시작하는 성씨의 사원번호와 성,이름 리스트 연봉을 출력해주세요
select * from employees;
-- emp_no : 사원번호 / birth_date : 태어난 날 / first_name : 성 / last_name : 이름 / gender : 성별 / hire_date : 입사일 
select * from salaries;
-- emp_no : 사원번호 / salary : 급여 / from_data /  to_data /


-- 8. outer join(union 제외)을 사용해서 employee, empt_manager 테이블을 이용해 현임자만 출력해주세요
-- 출력 예시 : emp_no / name(first) / from_date / to_date 

-- 9. employees테이블에 right join과 left join 을 만들고 union을 이용하여 연결합니다. (테이블에 뭘 만들지는 자유)

-- >>
-- 10. left join을 이용해 직원(employees) 테이블과 연봉(salaries) 테이블을 활용하여 
-- 해당 사원의 현재 연봉 정보를 표시 해주세요.
select e.emp_no as '사원번호', e. first_name, e.gender as '성별', s.salary as '연봉'
from employees as e
left join salaries as s
	on e.emp_no = s.emp_no
where s.to_date like '9999%' and '사원번호' < 10020;
-- 11. 컬럼명을 변경 해주세요. (emp_no -> 사원번호, gender -> 성별, salary -> 연봉)
-- 12. 현재 해당 사원이 받는 최종 연봉 값만 표시되도록 해주세요. (hint : salaries의 to_date 컬럼값이 9999로 시작됨)
-- 13. 사원번호가 10020 이하인 값들만 출력 되도록 해주세요.

-- 14. 정렬 시 사원번호는 오름차순으로 해주세요.
