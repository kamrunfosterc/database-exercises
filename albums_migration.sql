USE codeup_testing_db;
Drop table if exists albums;
# show databases;
-- //TODO write some sql to drop a table named albums if it exits
CREATE TABLE albums
(
    id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(200)   not null DEFAULT 'NONE',
    name         VARCHAR(300)   NOT NULL,
    release_date YEAR UNSIGNED NOT NULL,#could use DATE instead as YEAR/ int date
    sales        FLOAT UNSIGNED NOT NULL,
    genre        VARCHAR(100)            DEFAULT 'NONE',
    PRIMARY KEY (id)
);
describe albums;
# MySQL displays YEAR values in YYYY format, with a range of 1901 to 2155, and 0000.

