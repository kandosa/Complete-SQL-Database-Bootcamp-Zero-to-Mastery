/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT GROUPING(dept_name), dept_name, count( * ) as numbers_of_employees
FROM "public"."employees"
join dept_emp using(emp_no)
join departments using(dept_no)
group by
        grouping sets (
        (),
        dept_name
        )
order by numbers_of_employees desc;

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT GROUPING(dept_name), dept_name, avg(salary) as avg_salary
FROM "public"."employees"
join dept_emp using(emp_no)
join departments using(dept_no)
JOIN salaries using(emp_no)
group by
        grouping sets (
        (),
        dept_name
        )
order by avg_salary desc;
