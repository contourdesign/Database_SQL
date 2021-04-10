--The following questions and their corresponding queries

--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
inner join salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date LIKE '%1986';

/* List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name. */
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_mgr m
inner join departments d
ON m.dept_no = d.dept_no
inner join employees e
ON m.emp_no = e.emp_no
ORDER BY m.dept_no;

/*List the department of each employee with the following information: 
employee number, last name, first name, and department name. */
select p.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp p
inner join departments d
ON p.dept_no = d.dept_no
inner join employees e
ON p.emp_no = e.emp_no
ORDER BY p.emp_no;

/*List first name, last name, and sex for employees 
whose first name is "Hercules" and last names begin with "B."*/
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'
ORDER BY e.last_name;

/*List all employees in the Sales department, including their 
employee number, last name, first name, and department name.*/
select p.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp p
inner join employees e
ON p.emp_no = e.emp_no
inner join departments d
ON p.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

/*List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name.*/
select p.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp p
inner join employees e
ON p.emp_no = e.emp_no
inner join departments d
ON p.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no;

/* In descending order, list the frequency count of 
employee last names, i.e., how many employees share each last name. */
select last_name, count(*)
from employees
group by last_name
ORDER BY count desc;