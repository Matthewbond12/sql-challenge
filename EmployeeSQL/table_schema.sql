-- Drop table if it exists
DROP TABLE titles

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(50)
);

--Verify table values were created successfully
Select *
from titles;

-- Drop table if it exists
DROP TABLE employees

--Create employee table with title_id foreign key
CREATE TABLE employees (
	employee_number INT PRIMARY KEY NOT NULL,
	title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

--Verify table values were created successfully
select *
from employees;

-- Drop table if it exists
DROP TABLE salaries

-- Create titles table with employee_number foreign key
CREATE TABLE salaries (
	employee_number INT PRIMARY KEY NOT NULL,
	salary INT,
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

--Verify table values were created successfully
select *
from salaries;

-- Drop table if it exists
DROP TABLE department_name

-- Create titles table
CREATE TABLE department_name (
	dept_number VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

--Verify table values were created successfully
select *
from department_name;

-- Drop table if it exists
DROP TABLE department_employee

-- Create titles table with composite keys employee_number and dept_number
-- Composite keys were referenced using assistance from https://www.youtube.com/watch?v=SydCFe5eF4o
CREATE TABLE department_employee (
	employee_number INT NOT NULL,
	dept_number VARCHAR(4) NOT NULL,
	PRIMARY KEY (employee_number, dept_number),
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
	FOREIGN KEY (dept_number) REFERENCES department_name(dept_number)
);

--Verify table values were created successfully
select *
from department_employee;

-- Drop table if it exists
DROP TABLE department_manager

-- Create titles table with composite keys dept_number and employee_number
-- Composite keys were referenced using assistance from https://www.youtube.com/watch?v=SydCFe5eF4o
CREATE TABLE department_manager (
	dept_number VARCHAR(30) NOT NULL,
	employee_number INT NOT NULL,
	PRIMARY KEY (dept_number, employee_number),
	FOREIGN KEY (dept_number) REFERENCES department_name(dept_number),
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

--Verify table values were created successfully
select *
from department_manager;