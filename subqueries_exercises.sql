use employees;
# 1. Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows
#
# 2. Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
#
# 3. Find all the current department managers that are female.

select hire_date
from employees.employees e
where e.first_name in (
    select hire_date
    from dept_emp
    )
limit 10;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (#alt 110022, 110039, etc...)
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;











