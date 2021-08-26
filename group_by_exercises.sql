use employees;

# SELECT first_name, COUNT(first_name) numberOfRecordsWithThisFirstName
# FROM employees
# WHERE first_name NOT LIKE '%a%'
# GROUP BY first_name;
#
# # show how many employees were hired on each day for specified limit
# SELECT hire_date, COUNT(*) allEmployeesHiredOnSameDay
# FROM employees
# GROUP BY hire_date
# ORDER BY COUNT(*) DESC
# LIMIT 10;
#todo 2) in script, use distinct to find the unique titles in the titles table
select distinct title from titles;

#todo 3) find query for employees whose lastName start & end with 'e'
select last_name, count(*)
from employees
where last_name like 'e%e'
group by last_name
order by last_name;

#todo 4) update previous query to now find unique combination of firstname & lastname and end with 'e'
select concat(first_name,' ',last_name) fullName, count(*)
from employees
where last_name like 'e%e'
group by fullName;

#todo 5) & 6) find unique last names with a 'q' but not 'qu'
select last_name, count(*)
from employees
where last_name like '%q%' and last_name not like  '%qu%'
group by last_name
order by last_name;

#todo 7) update query for 'Irena', 'Vidya' or 'Maya', use count(*) and group by to find number of employees for each gender with those names
select gender, count(*)
from employees
where
        first_name = 'Irena'
           or first_name = 'Vidya'
           or first_name = 'Maya'
group by gender
order by gender


