use codeup_testing_db;

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





