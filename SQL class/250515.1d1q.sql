use employees;
-- ------------------------
select e.emp_no, e.first_name, e.last_name, s.salary 
from employees as e
inner join salaries as s 
	on e.emp_no = s.emp_no
where e.last_name like 'J%' and s.to_date like '9999%';
