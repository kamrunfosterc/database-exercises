use codeup_testing_db;
-- describe albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Fleetwood Mac','Rumours','1977',27.9,'Soft rock'),
       ('Pink Floyd','The Dark Side of the Moon','1973',24.4,'Progressive rock'),
       ('Shania Twain','Come On Over','1997',29.6,'Country, pop'),
       ('Bee Gees','Saturday Night Fever','1977',21.6,'Disco'),
       ('AC/DC','Back in Black','1980',29.6,'Hard rock'),
       ('Michael Jackson','Thriller','1982',47.9,'Pop, post-disco, funk, rock'),
       ('Whitney Houston','The Bodyguard','1992',32.4,'R&B, soul, pop, sountrack'),
       ('Eagles','Their Greatest Hits (1971–1975)','1976',41.2,'1976 Country rock, soft rock, folk rock');

-- select * from albums;