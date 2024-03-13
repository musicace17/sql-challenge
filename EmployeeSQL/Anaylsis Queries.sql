-- Quick access to check out the tables
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;


-- 1. View  employee number, last name, first name, sex, and salary of all employees
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2. View first name, last name, and hire date for employees hired in 1986
SELECT  employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date LIKE '%/1986'