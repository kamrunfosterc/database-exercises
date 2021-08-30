use employees;

#TODO 1.
# 1. Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
select first_name,last_name, hire_date
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = '101010'
    );

#WALKTHROUGH VERSION
select * from employees.employees emp
where emp.emp_no in (
    select subEmp.emp_no from employees.employees subEmp
    where subEmp.emp_no = 101010
    );

#TODO 2.
# 2. Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
select distinct (t.title), count(*) `Number of unique titles`
from employees.titles as t
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
)
group by title;

#WALKTHROUGH VERSION
select distinct t.title
from titles t
where t.emp_no in (
    select emp.emp_no from employees.employees emp
    where emp.first_name = 'Aamod'
    );

#TODO 3.
# 3. Find all the current department managers that are female.
select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999-01-01' and employees.gender = 'F'
)
group by emp_no;

#WALKTHROUGH VERSION
select emp.first_name, emp.last_name from employees.employees emp
where emp.gender = 'F' and (
    emp.emp_no in (
        select dm.emp_no from dept_manager dm
        where current_date between dm.from_date and dm.to_date
        )
    );

#TODO BONUS
# Find all the department names that currently have female managers.
select *
from dept_manager as dm
join departments d on dm.dept_no = d.dept_no
where emp_no in (
    select emp_no
    from employees as e
    where gender = 'f'
    )
and to_date = '9999-01-01';


#TODO BONUS
# Find the first and last name of the employee with the highest salary.
# select *
# from salaries s
# where emp_no
# order by s.salary;
#
# select *
# from salaries s
#     join employees e on s.emp_no = e.emp_no
# where s.salary(
#     select e.first_name, e.last_name
#     from employees as e
#           )











