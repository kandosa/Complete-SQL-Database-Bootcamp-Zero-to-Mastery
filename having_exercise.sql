/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
join titles as t on e.emp_no = t.emp_no
WHERE extract(year from hire_date) > 1991
group by e.emp_no
having count(t.title) > 2

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

SELECT e.emp_no, count(s.from_date)
FROM employees as e
join salaries as s on e.emp_no = s.emp_no
join dept_emp as de on e.emp_no =de.emp_no
join departments as d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Development'
group by e.emp_no
having count(s.from_date) > 15

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT e.emp_no, count(d.dept_no)
FROM employees as e
join salaries as s on e.emp_no = s.emp_no
join dept_emp as de on e.emp_no =de.emp_no
join departments as d on de.dept_no = d.dept_no
group by e.emp_no
having count(d.dept_no) > 1
