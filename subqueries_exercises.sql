USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery
-- 69 rows
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);