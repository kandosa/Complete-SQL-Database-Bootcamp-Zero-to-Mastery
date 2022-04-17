/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/

SELECT *
FROM employees
ORDER BY first_name, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT * 
FROM employees
order by birth_date

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

SELECT *
FROM employees
WHERE first_name like 'k%'
order by hire_date

