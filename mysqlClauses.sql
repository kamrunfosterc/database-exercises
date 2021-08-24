use employees;

#todo Part 1 LIKE CLAUSE
select * from employees.employees as e where e.first_name like '%tim%';
# employees.employees as e assigns this sim to a variable

#BELOW alt option as well to begin with and end with regardless of what's in between
select * from employees.employees as e where e.last_name like 'j%a';

#don't care prior to first a, don't care until first o after a and don't care about the ending
# this will grab any record that has an a and then a o in the last name
select * from employees.employees as e where e.last_name like '%a%o%';

#todo Part 2 BETWEEN CLAUSE
select * from employees.employees e where e.birth_date between '1964-06-02' and '1964-06-05';

#todo Part 3 IN CLAUSE sim to an OR operator
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

#todo Part 3 OR CLAUSE
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Herber' or 'Dredge' or 'Lipner' or 'Baek';
# WHERE last_name = 'Herber' or last_name = 'Dredge'; #this is an alternative

#todo IS NOT NULL CLAUSE / IS NULL
SELECT emp_no, title
FROM titles
WHERE to_date IS NOT NULL;

#NOTE OUR SAMPLE TABLE DOESN'T HAVE ANY NULL RECORDS SO NOTHING WILL RETURN HERE
SELECT emp_no, title
FROM titles
WHERE to_date IS NULL;

#TODO COMPARISON OPERATORS
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Baek';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no <= 10026;

