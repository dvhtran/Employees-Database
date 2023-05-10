-- Titles Table
CREATE TABLE titles(
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(100),
	PRIMARY KEY (title_id)
);

-- Employees Table
DROP TABLE employees

CREATE TABLE employees(
	emp_no INT NOT NULL,	
	emp_title_id VARCHAR(50),	
	birth_date DATE,	
	first_name VARCHAR(50),	
	last_name VARCHAR(50),	
	sex VARCHAR(20),	
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no)
);

-- Department Employee Table
DROP TABLE dept_emp

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments,
	PRIMARY KEY (emp_no,dept_no)
);

-- Salaries Table
DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

-- Department Manager Table
CREATE TABLE dept_manager(
	dept_no VARCHAR(50) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no,emp_no)
);

-- Departments Table
CREATE TABLE departments(
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50),
	PRIMARY KEY (dept_no)
);

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM departments