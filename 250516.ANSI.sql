-- ANSI 함수 사용해보기
create database my_emp_db;
use my_emp_db;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2), -- 최대 99999999.99
    hire_date DATE
);
INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, '김철수', '인사부', 3000000.00, '2024-03-01'),
(2, '박영희', '개발부', 4000000.00, '2024-06-15'),
(3, '이민준', '기획부', 3500000.00, '2023-01-10'),
(4, '최지아', '마케팅부', 3200000.00, '2024-05-21'),
(5, '한수연', '영업부', 2900000.00, '2021-12-30');

select * from employees;
-- table copy
create table new_employees
as select * from employees;

select * from new_employees;


