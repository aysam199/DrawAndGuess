BEGIN;


DROP TABLE IF EXISTS usernames;
DROP TABLE IF EXISTS round;

create table usernames (
    id SERIAL PRIMARY KEY,
    names VARCHAR(110),
	passwords VARCHAR(50)
);
create table round (
	id SERIAL PRIMARY KEY,
    doodle VARCHAR(100)
);

insert into usernames (names, passwords) values ('aysam1', '1234');
insert into usernames (names, passwords) values ('aysam2', '1234');
insert into usernames (names, passwords) values ('aysam3', '1234');
insert into usernames (names, passwords) values ('aysam4', '1234');
insert into usernames (names, passwords) values ('aysam5', '1234');
insert into usernames (names, passwords) values ('aysam6', '1234');
insert into usernames (names, passwords) values ('aysam7', '1234');
insert into usernames (names, passwords) values ('aysam8', '1234');
insert into usernames (names, passwords) values ('aysam9', '1234');
insert into usernames (names, passwords) values ('aysam10', '1234');




insert into round (doodle) values ('camel');
insert into round (doodle) values ('car');
insert into round (doodle) values ('snake');
insert into round (doodle) values ('nature');
insert into round (doodle) values ('guitar');
insert into round (doodle) values ('sea');
insert into round (doodle) values ('laptop');
insert into round (doodle) values ('chair');





COMMIT;

