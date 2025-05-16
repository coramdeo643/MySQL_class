select * from new_employees;
-- 1. 집계 함수
-- 평균 함수
select avg(salary) as avg_salary
from new_employees;

-- 반올림, 소수점 n자리 까지 처리
select round(avg(salary), 2) as avg_salary
from new_employees;

--
select count(*) as d_count
from new_employees;

-- 안되는 쿼리(논리적, 물리적)
-- select count(*) as d_count, name
-- from new_employees;

select max(salary) as m_s
from new_employees;

-- 2. 문자열 함수
-- 2.1. 문자열+문자열 결합 후 대문자로 변환
select concat('Mr/Ms ', name) -- 결합
from new_employees;

select concat(upper('Mr/Ms'), name) -- 대문자
from new_employees;

select concat(lower('Mr/Ms'), name) -- 소문자
from new_employees;

-- 2.2. 문자열 추출함수
select *, substring(name, 1, 2) as formal_name
from new_employees;

select *, concat(substring(name, 1, 2), '*') as formal_name
from new_employees;

-- 3. 논리 및 조건 함수
-- 3.1. case when then else
-- 현재 데이터베이스 (my_emp_db) 사용중
select *,
	case when	employees.gender = 'M' then '남자' else '여자' end as formal_gender
from employees.employees;

-- 4. 날짜 및 시간 함수
-- 4.1. 오늘 날짜 반환
select current_date() as today;
select current_date as today;

-- 4.2. 날짜 차이 계산
-- dateidff : 두날짜간의 일수차이를 계산하여 반환하는 함수
select *, 	
	datediff(current_date, hire_date) as years_working
from new_employees;
-- date diff / 365일
select *, 	
	datediff(current_date, hire_date) / 365.0 as years_working
from new_employees;
-- floor 소수점 버림
select *, 	
	floor(datediff(current_date, hire_date) / 365.0) as years_working
from new_employees;

-- 5. 형변환 함수
-- decimal --> 형변환 -- 문자열 (varchar 안됨. 가변 길이)
-- select *, cast(salary as varchar(20)) as salary_text
-- from new_employees;
-- 5.1. 형변환 함수 사용
-- decimal --> 형변환 -- 문자열 (char 고정 길이)
select *, cast(salary as char) as salary_text
from new_employees;
-- 5.2. 형변환 + 문자열 더하기 함수(뒤)
select *, concat(cast(salary as char), "원") as formal_salary
from new_employees;
-- 5.3. 형변환 + 문자열 더하기 함수(앞)
select *, concat("$", cast(salary as char)) as formal_salary
from new_employees;

