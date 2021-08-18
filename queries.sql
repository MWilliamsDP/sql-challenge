--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on (e.emp_no=s.emp_no)
;

--2. List first name, last name, 
--and hire date for employees who were hired in 1986.

select first_name, last_name, emp_no, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date desc

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
--select emp_no, first_name, last_name
--from employees as e
--where title_id='m0001'
select dm.emp_no, e.first_name, e.last_name,d.dept_no, d.dept_name
from departments as d
join dept_manager as dm
on d.dept_no=dm.dept_no
join employees as e
on dm.emp_no=e.emp_no

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select de.emp_no, e.first_name, e.last_name, d.dept_name
from departments as d
join dept_emp as de
on d.dept_no=de.dept_no
join employees as e
on de.emp_no=e.emp_no

--5. List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name ='Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

select de.emp_no, e.first_name, e.last_name, d.dept_name
from departments as d
join dept_emp as de
on d.dept_no=de.dept_no
join employees as e
on de.emp_no=e.emp_no
where dept_name ='Sales'

--7. List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.
--(I put them in reverse alphabetical)

select de.emp_no, e.first_name, e.last_name, d.dept_name
from departments as d
join dept_emp as de
on d.dept_no=de.dept_no
join employees as e
on de.emp_no=e.emp_no
where dept_name ='Sales' or dept_name='Development'
order by last_name desc,first_name desc


--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select last_name, 
count(last_name) as freq_count_last_names
from employees
group by last_name
order by count(last_name) desc
