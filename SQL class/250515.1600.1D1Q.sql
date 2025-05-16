use employees;

select * from dept_manager;

create table current_dept_manger
as select * from dept_manager where to_date like '9999%';

select cdm.dept_no, cdm.emp_no, e.first_name, e.last_name
from current_dept_manger as cdm
inner join employees as e on cdm.emp_no = e.emp_no;

-- 1) dept_manager을 복사하여 current_dept_manager 테이블 CREATE 해주세요
-- (--> current_dept_manager에서 현재 매니저인 사람만 select(to_date, 9999%))
-- 2) INNER JOIN 사용하여 dept_no, emp_no, first_name, last_name SELECT 해주세요(current_dept_manager, employees)