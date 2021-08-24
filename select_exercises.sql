use codeup_testing_db;

select 'All albums by Michael Jackson', name from albums where artist = 'michael jackson';
select 'Genre from the Eagles', genre from albums where name = 'Eagles';
select 'Albums released in 1980"s', name from albums where release_date BETWEEN 1980 AND 1989;
select 'All albums with a genre of "Rock"', genre from albums where genre = 'rock';
select 'Albums with less than 30 million certified sales',  name from albums where sales < 30;

#todo Sam Version below
# all pink floyd albums
select name from albums where artist = 'Pink Floyd';

# the year sgt. pepper's lonely hearts club band was released
select release_date from albums where name = 'Sgt. Pepper"s Lonely Hearts Club Band';

#the genre for nevermind
select genre from albums where name = 'Nevermind';

#which albums were released in the 1990's
select name from albums where release_date  BETWEEN 1990 AND 1999;

#albums with less than 20 million certified sales
select name from albums where sales < 20;

#all albums w/ a genre of 'rock' wh do these query results not include albums with 'hard rock' and 'passive rock'
select name from albums where genre = 'rock';


#todo this is extra from exercise
# alternatively
select * from albums where genre like '%rock%'; #would include all that have the word rock inside of it, will be accepted
select * from albums where genre like '%rock%' or genre like '%pop%';# includes both terms

# select name from albums where genre = 'pop'; to delete
# delete from albums where artist = 'michael jackson'; #for delete portion
# select 'Genre from the Eagles', genre from albums where name = 'Eagles';
# select 'Albums released in 1980"s', name from albums where release_date BETWEEN 1980 and 1989;

# touch select_exercises.sql in terminal will create this same file

# sam googled
# - mysql output quote function