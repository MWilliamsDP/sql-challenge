drop table dept_emp;
drop table dept_manager;
drop table departments;
drop table employees;
drop table salaries;
drop table titles;

create table Departments (
	dept_no varchar(4) primary key,
	dept_name varchar(100)
 );


create table Titles (
	title_id varchar(5) primary key,
	title varchar(50)
);

create table Salaries(
	emp_no int primary key,
	salary int
);

create table Dept_Manager(
	dept_no varchar(4),
	emp_no int primary key,
	foreign key(dept_no) references Departments(dept_no)
);


create table Dept_Emp (
emp_no int,
dept_no varchar(4),
	primary key(emp_no, dept_no)
);


Create table Employees(
emp_no int primary key,
title_id varchar(5),
birth_date date,
first_name varchar(100),
last_name varchar(100),
sex varchar(2),
hire_date date,
	foreign key (title_id) references Titles(title_id)
);

select * from employees
