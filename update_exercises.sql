use codeup_testing_db;# shows what data base your calling to work with

# update albums
# set artist = 'kimmi'
# where

select 'All albums prior to 1980', name from albums where release_date < 1980 ;
update albums
set release_date = 1912
where release_date < 1980;


select 'The King of pop', name, artist from albums where artist = 'Michael Jackson';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';


select *, 'All albums' from albums;# updates all sales in albums table by 10x
update albums
set sales = sales *10;


#todo Sam walk through
#
# select * from albums;
#
# update albums set sales = sales * 10;
# update albums set release_date = 1800 where artist = 'Michael Jackson';#error out of range, bc YEAR goes only to 1901
#
# update albums
# set artist = 'Peter Jackson'
# where artist = 'Michael Jackson';
#
# select * from albums where release_date < 1980;
# select * from albums where artist = 'Michael Jackson';




