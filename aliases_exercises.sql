use employees;

# select * from employees e where e.last_name and e.first_name limit 10; #first attempt
select concat(emp_no, ' - ',last_name, ' ,', first_name) as fullName, birth_date as DOB
from employees
limit 10;

#todo Sam Walkthrough
select CONCAT(emp_no, ' - ',e.last_name, ', ',e.first_name) full_name from employees.employees e limit 10;






