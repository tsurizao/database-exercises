USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery
-- 69 rows
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod
-- 314 total titles, 6 unique titles
SELECT title, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM titles t
         JOIN employees e ON t.emp_no = e.emp_no
WHERE t.emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female
# Results should look like this:
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
SELECT first_name, last_name
FROM employees e
WHERE gender = 'F' && e.emp_no IN (SELECT dm.emp_no FROM dept_manager dm WHERE dm.to_date > NOW());

# Easier way to write the above query ...
# SELECT first_name, last_name
# FROM employees e
#          JOIN dept_manager dm ON dm.emp_no = e.emp_no
# WHERE dm.to_date > NOW() && gender = 'F';