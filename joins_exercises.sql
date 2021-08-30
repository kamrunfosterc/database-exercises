use employees;
use joins_test_db;


create database if not exists joins_test_db;

CREATE TABLE rolez (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE userz (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO rolez (name) VALUES ('admin');
INSERT INTO rolez (name) VALUES ('author');
INSERT INTO rolez (name) VALUES ('reviewer');
INSERT INTO rolez (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('Robert', 'bob@example.com', 2),
('Johaun', 'joe@example.com', 2),
('Sal', 'sally@example.com', 2),
('Michael', 'mike@example.com', null);


select a.name, a.email, b.name
from users a
         inner join roles b on a.role_id = b.id; #BASED ON ROLE

select a.name, a.email, b.name
from users a
         left join roles b on a.role_id = b.id;

select a.name, a.email, b.name
from users a
         right join roles b on a.role_id = b.id;

select a.name, a.email, b.name
from users a
         left join roles b on a.role_id = b.id
where b.name is null;

select a.name, a.email, b.name
from users a
         right join roles b on a.role_id = b.id
where b.name is null;

select a.name, a.email, b.name
from users a
         right join roles b on a.role_id = b.id
where a.email like 's%';

describe employees.dept_emp;

select e.first_name, e.last_name
from employees.employees e
where emp_no = 10001;

select e.first_name, e.last_name, de.from_date, de.to_date, d.dept_name
from employees.employees e
         inner join employees.dept_emp de on e.emp_no = de.emp_no
         inner join employees.departments d on de.dept_no = d.dept_no
where e.last_name like 'D%';

#TODO WALKTHROUGH











# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson.
#     Before you run each query, guess the expected number of results.
#
# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
#     Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a
#         given role. Hint: You will also need to use GROUP BY in the query.