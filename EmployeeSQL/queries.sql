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
SELECT department_name.dept_number, department_name.dept_name, 
	   department_manager.employee_number, employees.last_name, employees.first_name
FROM department_name
JOIN department_manager
	ON department_name.dept_number = department_manager.dept_number
JOIN employees
	ON employees.employee_number = department_manager.employee_number;
	
--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name
SELECT department_employee.dept_number, employees.employee_number, employees.last_name,
	   employees.first_name, department_name.dept_name
FROM department_employee
JOIN employees
	ON department_employee.employee_number = employees.employee_number
JOIN department_name
	ON department_name.dept_number = department_employee.dept_number;
	
--List first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT employees.employee_number, employees.last_name, employees.first_name
FROM department_name
JOIN department_employee
	ON department_name.dept_number = department_employee.dept_number
JOIN employees
	ON department_employee.employee_number = employees.employee_number
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name
SELECT employees.employee_number, employees.last_name, employees.first_name, department_name.dept_name
FROM department_name
JOIN department_employee
	ON department_name.dept_number = department_employee.dept_number
JOIN employees
	ON department_employee.employee_number = employees.employee_number
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name)
SELECT last_name, count(*) AS "Total Count of Shared Last Names"
FROM employees
GROUP BY last_name
ORDER BY "Total Count of Shared Last Names" DESC;