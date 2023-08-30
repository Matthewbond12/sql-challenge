-- Query for Q1. List the employee number, last name, first name, sex, and salary of each employee
SELECT e.employee_number, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries as s
ON e.employee_number = s.employee_number;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name
SELECT dm.department_number, dn.department_name, dm.employee_number, e.last_name, e.first_name
FROM department_manager
