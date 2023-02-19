--Question 1, List the employee number, last name, first name, sex, and salary of each employee 

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- Question 2, List the first name, last name, and hire date for the employees who were hired in 1986

SELECT e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE e.hire_date >='1986-01-01' AND e.hire_date <='1986-12-31'
ORDER BY hire_date;

-- Question 3, List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm, departments AS d, employees AS e
WHERE d.dept_no = dm.dept_no AND dm.emp_no = e.emp_no;

-- Question 4, List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B

SELECT e.last_name, e.first_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'
;

-- Question 5, List each employee in the Sales department, including their employee number, last name, and first name

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS	d, dept_emp AS de, employees AS e
WHERE d.dept_no = de.dept_no AND de.emp_no = e.emp_no AND d.dept_name = 'Sales';

-- Question 6, List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS	d, dept_emp AS de, employees AS e
WHERE d.dept_no = de.dept_no AND de.emp_no = e.emp_no AND (d.dept_name = 'Sales' OR d.dept_name = 'Development');

-- Question 7, List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name)

SELECT e.last_name, COUNT(e.last_name) AS "frequency"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "frequency" DESC;



