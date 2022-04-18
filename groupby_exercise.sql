/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT e.hire_date,count(e.emp_no)
FROM employees as e
group by hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT t.title, count(e.emp_no)
FROM employees as e
JOIN titles as t ON e.emp_no = t.emp_no
WHERE extract(year from hire_date) < 1991
group by t.title

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e 
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no 
WHERE d.dept_name = 'Development'
group by e.emp_no, de.from_date, de.to_date
