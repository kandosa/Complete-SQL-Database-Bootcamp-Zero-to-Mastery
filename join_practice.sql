/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT b.firstname, b.lastname, a.orderid
FROM "public"."orders" AS a 
LEFT JOIN customers as b on a.customerid = b.customerid
where b.state =  'OH' or b.state = 'NY' or b.state = 'OR'

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT a.prod_id, b.quan_in_stock
FROM products as a
JOIN inventory as b on a.prod_id = b.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select a.first_name, a.last_name, c.dept_name
FROM employees as a
join dept_emp as b on a.emp_no = b.emp_no
join departments as c on b.dept_no = c.dept_no
