
DROP TABLE IF EXISTS tb_student;
-- IF EXISTS : 해당 테이블이 존재할 경우에만 삭제하도록 조건을 거는 옵션
CREATE TABLE tb_student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    class CHAR(1) NOT NULL,
    score INT NOT NULL
);

INSERT INTO tb_student (name, class, score) VALUES
('김민수', 'A', 85),
('이서연', 'B', 75),
('박지훈', 'A', 65),
('최예린', 'A', 70),
('정하윤', 'B', 95),
('강동현', 'C', 88),
('오소연', 'C', 92),
('한지민', 'B', 78),
('윤태양', 'A', 85),
('문채원', 'C', 90);

select * from tb_student;
-- 1. 각 클래스당 몇명이 있는지?
select class, count(name)
from tb_student
group by class;

-- 2. 각 클래스의 평균 점수를 계산하고, 소수점 둘째 자리로 반올림 해주세요
select class, round(avg(score), 2) as avg_score
from tb_student
group by class;

-- 3. 각 클래스의 평균 점수를 계산하고, 80 점 이상인 클래스만 출력
-- group by 에 조건 추가하려면 having 사용하자
select class, 
	round(avg(score), 2) as avg_score
from tb_student
group by class
having avg_score >= 80;

use employees;

select e.emp_no, e.last_name,
	max(s.salary) as max_salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no
group by e.emp_no
limit 3;

-- 4. 각 부서의 최고 급여를 받는 사람을 출력
-- DB change
use my_emp_db;
select *
from new_employees;

DROP TABLE IF EXISTS tb_employees;

CREATE TABLE tb_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO tb_employees (name, department, salary) VALUES
('김도현', '영업', 48000000),
('이소영', '영업', 55000000),
('박지영', '마케팅', 50000000),
('최민재', '마케팅', 45000000),
('강민호', '인사', 35000000),
('오수진', '인사', 40000000),
('정우성', '개발', 75000000),
('한지은', '개발', 65000000),
('윤서현', '개발', 72000000),
('문태준', '개발', 68000000),
('신동엽', '영업', 52000000),
('장미란', '영업', 51000000),
('황아영', '마케팅', 47000000),
('류현진', '인사', 43000000),
('김나영', '인사', 39000000);

select * from tb_employees;
-- employee_id | name | department | salary
-- 5 부서별 최고 급여를 출력
select department, max(salary)
from tb_employees
group by department;

-- 6 직원 수가 4명 이상인 부서 출력
select department, count(*) as emp_count
from tb_employees
group by department
having emp_count >= 4;

-- 7 부서별 평균 급여와 직원수를 출력
select department, round(avg(salary),-3) as avg_salary, count(*) as emp_count
from tb_employees
group by department;

-- 8 부서별 평균연봉이 5천만원 이상인 부서 조회
select department, round(avg(salary),0) as avg_salary
from tb_employees
group by department
having avg_salary >= 50000000;

-- 9 부서별 연봉 합계가 2억 이상 부서 조회
select department, sum(salary) as sum_salary
from tb_employees
group by department
having sum_salary >= 200000000;

-- 10 부서별 최소 연봉 4천만 미만 부서 조회
select department, min(salary) as min_salary
from tb_employees
group by department
having min_salary < 40000000;

