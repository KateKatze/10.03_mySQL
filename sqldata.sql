-- How many rows do we have in each table in the employees database?
SELECT count(*) FROM departments / dept_emp / dept_manager / employees / salaries / titles;

-- How many employees with the first name "Mark" do we have in our company?
SELECT count(first_name) as Name FROM `employees` WHERE first_name='Mark';

Name
230

-- How many employees with the first name "Eric" and the last name beginning with "A" do we have in our company?

SELECT count(first_name + last_name) as Name FROM `employees` WHERE first_name='Eric' AND last_name like 'A%';

Name
13

-- How many employees do we have that are working for us since 1985 and who are they?

SELECT count(*)
FROM employees emp JOIN dept_emp d ON emp.emp_no=d.emp_no JOIN departments dept ON d.dept_no=dept.dept_no
WHERE YEAR(emp.hire_date) LIKE '1985%'
and to_date >= CURRENT_DATE; 

?????

-- How many employees got hired from 1990 until 1997 and who are they?

SELECT emp.first_name, emp.last_name, emp.hire_date, d.dept_no, dept.dept_name
FROM employees emp JOIN dept_emp d ON emp.emp_no=d.emp_no JOIN departments dept ON d.dept_no=dept.dept_no
WHERE YEAR(emp.hire_date) BETWEEN '1990%' AND '1997%';

count 
-- How many employees have salaries higher than EUR 70 000,00 and who are they? 

SELECT emp.first_name, emp.last_name, emp.hire_date, sal.salary, t.title FROM employees emp JOIN salaries sal ON emp.emp_no=sal.emp_no JOIN titles t ON emp.emp_no = t.emp_no WHERE sal.salary >= 70000;

count

-- How many employees do we have in the Research Department, who are working for us since 1992 and who are they?

-- TIP: You can use the CURRENT_DATE() FUNCTION to access today's date



--  8. Report:

--  How many employees do we have in the Finance Department, who are working for us since 1985 until now and who have salaries higher than EUR 75 000,00 - who are they?



--  9. Report:

--  We need a table with employees, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title and salary.



--  10. Report:

--  We need a table with managers, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title, department name and salary.



--  Bonus query:

--   Create a query that will join all tables and show all data from all tables.



--  Next step:

--  Now you should create at least 5 queries on your own, try to use data from more than 2 tables.



