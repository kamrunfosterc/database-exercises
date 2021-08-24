use employees;

# todo Part One
# Create a file named where_exercises.sql. Make sure to use the employees database before you begin.
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.

select count(*) from employees.employees as e where e.first_name in ('Irena', 'Vidya','Maya');
select * from employees.employees as e where e.last_name like 'E%'; #can add count as short cut
select * from employees.employees as e where e.last_name like '%q%';

#can do > from employees e where e.first_name in () < alternatively
#select count (e.emp_no) or select count (*)

# todo Part Two
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

# # select * from employees.employees as e where e.first_name = 'Irena' or 'Vidya' or 'Maya'; # other option
# select *
# from employees.employees as e
# where e.gender = 'M'
#   and (e.first_name = 'Irena'
#     or e.first_name = 'Vidya'
#     or e.first_name = 'Maya'); #method used by sam
#
# select count(*)
# from employees.employees e
# where e.last_name like 'e%' or e.last_name like '%e';
#
# select count(*)
# from employees.employees e
# where e.last_name like '%q%';
#
# select count(*)
# from employees.employees as e
# where e.last_name like '%q%' and e.last_name not like '%qu%';

#TODO Limit Exercises
# List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name
FROM employees.employees e
order by e.last_name
desc
limit 10;

#Todo 3
##Create a query to get the top 5 salaries and display just the employees number from the salaries table.
# The employee number results should be:
SELECT emp_no
FROM employees.salaries
order by salary
desc
limit 5;

#Todo 4

select emp_no from employees.salaries e order by e.salary desc limit 5  offset 45; #page shows 100 to 200 entry block


#Try to think of your results as batches, sets, or pages. The first five results are your first page.
# The five after that would be your second page, etc. Update the previous query to find the tenth
# page of results. The employee number results should be:
# 254466
# 492164
# 66793
# 492164








