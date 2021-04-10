--Schema for creating tables and relationships

CREATE TABLE employees (
    emp_no int PRIMARY KEY NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date varchar   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date varchar   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
    dept_no varchar PRIMARY KEY  NOT NULL,
    dept_name varchar   NOT NULL
);

CREATE TABLE titles (
    title_id varchar PRIMARY KEY   NOT NULL,
    title varchar   NOT NULL
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_mgr (
    dept_no varchar   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


