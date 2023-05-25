CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);


CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR
);


CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR
);


-- note the date format in employees needs convert from string format.
-- use conversion functions if needed for querying.
CREATE TABLE employees (
	emp_no VARCHAR,
	emp_title VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR	
);


CREATE TABLE salaries (
	emp_no VARCHAR,
	salary INT
);


CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

--------------------------------------------------------------------------
-- assign primary keys:
ALTER TABLE departments
ADD PRIMARY KEY (dept_no)
;

ALTER TABLE employees
ADD PRIMARY KEY (emp_no);

ALTER TABLE dept_manager
ADD PRIMARY KEY (emp_no);

ALTER TABLE titles
ADD PRIMARY KEY (title_id);

ALTER TABLE salaries
ADD PRIMARY KEY (emp_no);


-- note there is no unique single PK column for dept_emp
-- so combine the two columns for combined PK
ALTER TABLE dept_emp
ADD CONSTRAINT PK_empdept PRIMARY KEY (emp_no,dept_no);

--------------------------------------------------------------------------


select *
from dept_emp
