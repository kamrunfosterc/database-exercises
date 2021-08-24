use employees;

# select title from titles; #example layout
# employees.employees e #sets aliases
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

#todo Sam's version
select distinct salary, emp_no
from salaries order by salary desc limit 5;


#Todo 4

select emp_no from employees.salaries e order by e.salary desc limit 5  offset 45; #page shows 100 to 200 entry block

#todo the corrected approach
select emp_no from employees.salaries e order by e.salary desc limit 4  offset 46;#this is the REAL ANSWER

#todo Sam's version
select distinct salary, emp_no from salaries order by salary desc limit 5 offset 45;
#Try to think of your results as batches, sets, or pages. The first five results are your first page.
# The five after that would be your second page, etc. Update the previous query to find the tenth
# page of results. The employee number results should be:
# 254466
# 492164
# 66793
# 492164








