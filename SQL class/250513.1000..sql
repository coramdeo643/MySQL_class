-- Drop Indexes(major)
drop index idx_major on student;

select * from student 
where major = '컴퓨터공학과';

alter table student
add index idx_major(major);

-- 도전 과제(테이블 설계) 복습
create table employees1(
	id int primary key auto_increment,
    name varchar(50) not null,
    grade int not null,
    department varchar(50) not null,
    team varchar(50) not null,
    index idx_dept(department)
);
alter table employees1
add index idx_team(team);

create index idx_dept_team on employees1(department, team);

show index from employees1;
select * from employees1;
drop index idx_team on employees1;

INSERT INTO employees1 (name, grade, department, team) VALUES
('홍길동', 1, '인사과', 'A'),
('김영희', 2, '행정과', 'B'),
('이철수', 3, '인사과', 'A'),
('박민지', 1, '회계과', 'B'),
('최재영', 4, '행정과', 'A'),
('강영식', 2, '인사과', 'B');

select * from employees1;
alter table employees1
change year emp_year varchar(50) not null;