use employees;
# 2Find all employees whose names start and end with 'E'. Use concat() to combine their first and last name
# together as a single column in your results.
#todo part 2
SELECT *
from employees.employees e
where Concat(first_name like 'e%e' and last_name like 'e%e');
# where CONCAT(first_name, last_name) like 'e%e'; # alt: Concat(first_name like 'e%e' and last_name like 'e%e')
# above returns firstnames starting w e and lastnames ending with e
#todo ***** Sam version *****
select concat(first_name, ' ', last_name) fullName from employees.employees e where e.first_name like 'e%e' and e.last_name like 'e%e';

#todo part 3
# 3Find all employees born on Christmas — 842 rows.
select * from employees.employees e where month(birth_date) = 12 and day(birth_date) = 25;

#todo ***** Sam version *****
select * from employees.employees e where day(e.birth_date) = 25 and month(e.birth_date) = 12;

#todo part 4
# 4Find all employees hired in the 90s and born on Christmas — 362 rows.
select * #select count(*)
from employees.employees e
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12 and day(birth_date) = 25;
#got it to show all years in the 90's however not in any particular order

#todo part 5
# 5Change the query for employees hired in the 90s and born on Christmas such that the first
# result is the
# oldest employee who was hired last. It should be Khun Bernini.
select *
from employees.employees e
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12 and day(birth_date) = 25
order by hire_date
desc; #could limit by 1 but not required

# 6For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days
# they have been working at the company (Hint: You might also need to use now() or curdate()).
#todo 6
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days
# they have been working at the company (Hint: You might also need to use now() or curdate()).
select first_name, last_name, datediff(now(), hire_date)
from employees.employees e
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12 and day(birth_date) = 25
#CIERRA HELP






