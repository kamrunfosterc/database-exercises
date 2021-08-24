use codeup_testing_db;# shows what data base your calling to work with

select * from albums where release_date > 1991;
select * from albums where genre = 'disco';
select * from albums where artist = 'Whitney Houston';

#select statements for
#albums relased after 91
delete from albums where genre = 'disco';
# albums with the genre disco

delete from albums where artist = 'Whitney Houston'; #for delete portion
# albums by whitney houston

#todo Sam walkthrough
#
# select * from albums;
#
# delete from albums where release_date > 1991;
# delete from albums where genre = 'disco';
# delete from albums where artist = 'Nirvana';
#
# select * from albums where release_date > 1991;
# select * from albums where genre = 'disco';
# select * from albums where artist = 'Whitney Houston';
