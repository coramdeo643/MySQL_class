select 
	name, 
	department, 
	concat(substring(salary,1,4), '만원') 
		as foraml_salary
from 
	tb_employees;

select 
	d.dept_name, count(e.gender = 'M') as count_male
from
	employees as e
inner join dept_emp as de
	on e.emp_no = de.emp_no 
inner join departments as d
	on d.dept_no = de.dept_no
group by d.dept_name;