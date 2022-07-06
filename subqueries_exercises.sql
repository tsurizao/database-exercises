USE employees;

SELECT *
FROM titles;
SELECT *
FROM employees;
SELECT *
FROM dept_emp;
# Find all the employees with the same hire date as employee 101010 using a subquery
-- 69 rows
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod
-- 314 total titles, 6 unique titles
SELECT CONCAT(first_name, ' ', last_name) AS full_name, t.title
FROM employees e
         JOIN titles t ON e.emp_no = t.emp_no
WHERE first_name = 'Aamod'
ORDER BY t.title, last_name;
