/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT *
FROM employees
WHERE EXTRACT(YEAR from age(birth_date)) > 60;
/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(*)
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 2

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count(*) 
FROM employees
WHERE EXTRACT (MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(AGE(birth_date)) AS max_age FROM employees

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT count(*)
FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 2004 and EXTRACT(MONTH from orderdate) = 1;
/*or*/
SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';
