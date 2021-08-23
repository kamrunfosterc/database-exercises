use codeup_testing_db;

select 'All albums by Michael Jackson', name from albums where artist = 'michael jackson';
select 'Genre from the Eagles', genre from albums where name = 'Eagles';
select 'Albums released in 1980"s', name from albums where release_date BETWEEN 1980 and 1989;
select 'All albums with a genre of "Rock"', genre from albums where genre = 'rock';
select 'Albums with less than 30 million certified sales',  name from albums where sales < 30;


# select name from albums where genre = 'pop'; to delete
# delete from albums where artist = 'michael jackson'; #for delete portion
# select 'Genre from the Eagles', genre from albums where name = 'Eagles';
# select 'Albums released in 1980"s', name from albums where release_date BETWEEN 1980 and 1989;