use employees;
select * from employees;

select * from dept_emp;
select * from departments;
select * from salaries;

select de.emp_no, de.dept_no, d.dept_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no;

select e.emp_no, d.dept_no, e.first_name, s.salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no
inner join dept_emp as d on e.emp_no = d.emp_no;