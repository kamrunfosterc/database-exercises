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
('bob', 'bob@example.com', 2),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 2),
('mike', 'mike@example.com', null);


# select name, b.email
# from user a
#     inner join roles b on a.role_id = r.id;

select a.name, a.email, b.name
from users a
         inner join roles b on a.role_id = b.id; #BASED ON ROLE

select a.name, a.email, b.name
from users a
         left join roles b on a.role_id = b.id;

select a.name, a.email, b.name
from users a
         right join roles b on a.role_id = b.id;

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson.
#     Before you run each query, guess the expected number of results.
#
# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
#     Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a
#         given role. Hint: You will also need to use GROUP BY in the query.