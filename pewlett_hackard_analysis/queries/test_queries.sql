-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title varchar NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, title, from_date)
);

-- Retirement eligibility
select first_name, last_name
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
select count(first_name)
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create table from retirement eligibility data
select emp_no, first_name, last_name
into retirement_info
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check retirement table
select * from retirement_info;

select
d.dept_name,
dm.emp_no,
dm.from_date,
dm.to_date
from departments as d
inner join dept_manager as dm
on d.dept_no = dm.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT 
ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
from retirement_info as ri
left join dept_emp as de
on ri.emp_no = de.emp_no;

-- Joining retirement_info and dept_emp tables
SELECT 
ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
into current_emp
from retirement_info as ri
left join dept_emp as de
on ri.emp_no = de.emp_no
where de.to_date = ('9999-01-01');

-- Employee count by department number
select
count(ce.emp_no),
de.dept_no
into retirement_department_info
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
group by de.dept_no
order by de.dept_no;

select * from salaries
order by to_date desc;

SELECT emp_no, first_name, last_name, gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

select e.emp_no,
e.first_name,
e.last_name,
e.gender,
s.salary,
de.to_date
INTO emp_info
from employees as e
inner join salaries as s
on (e.emp_no = s.emp_no)
inner join dept_emp as de
on (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);

select ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
into dept_info
from current_emp as ce
inner join dept_emp as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

select
di.emp_no,
di.first_name,
di.last_name,
di.dept_name
from dept_info as di
where di.dept_name IN ('Sales', 'Development');

drop table retirement_titles

select
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
into retirement_titles
from employees as e
join titles as t
on e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no;

select * from retirement_titles

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select
count(emp_no),
title
into retiring_titles
from unique_titles
group by title
order by count(emp_no) DESC;

select * from retiring_titles

select distinct on(emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship_eligibilty
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join titles as t
on e.emp_no = t.emp_no
where (de.to_date = '9999-01-01')
and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no;

select * from mentorship_eligibilty
