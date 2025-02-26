-- 1. Create table for departments.csv
DROP TABLE IF EXISTS departments; 

CREATE TABLE departments (
	dept_no TEXT NOT NULL,
	dept_name VARCHAR (40),
	PRIMARY KEY (dept_no)
);

Select*FROM departments

-- 2. Create table for dept_emp.csv
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no TEXT NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select*FROM dept_emp

-- 3. Create table for dept_manager.csv
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no TEXT NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select*FROM dept_manager

-- 4. Create table for employees.csv
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id TEXT,
	birth_date VARCHAR (40),
	first_name VARCHAR (40),
	last_name VARCHAR (40),
	sex TEXT,
	hire_date VARCHAR (40),
	PRIMARY KEY (emp_no)
);

Select*FROM employees

-- 5. Create table for salaries.csv
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select*FROM salaries

-- 6. Create table for titles.csv
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id TEXT PRIMARY KEY,
	title VARCHAR (40)
);

Select*FROM titles





