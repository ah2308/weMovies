create table wemovies.member(
	mid varchar(100),
    pwd varchar(100),
    name varchar(100),
    email varchar(100),
    birth date,
    mauth char(5),
    reg_date date,
    primary key(mid)
);

select * from wemovies.member;

insert into wemovies.member (mid, pwd, name, email, birth, mauth, reg_date) 
values ('admin', '1234', '관리자', 'admin@admin', '2022-10-02', 'A', now());

CREATE TABLE wemovies.movieinfo(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    original_title varchar(255) NOT NULL,
    title varchar(255) NOT NULL,
    poster_path varchar(255),
    release_date varchar(255),
    overview varchar(3000),
    genres varchar(50),
    runtime int(10)
);

select * from wemovies.movieinfo;
drop table wemovies.movieinfo;

/* c_name = 영화관 이름(지점명)
	c_theater = 상영관 개수
 */
CREATE TABLE wemovies.cinema(
	c_name varchar(30) NOT NULL PRIMARY KEY,
    c_theater int(10)
);
INSERT INTO wemovies.cinema (c_name, c_theater) values ('CGV 강변역점', '4');
INSERT INTO wemovies.cinema (c_name, c_theater) values ('CGV 부평역점', '4');
INSERT INTO wemovies.cinema (c_name, c_theater) values ('CGV 경기점', '4');
INSERT INTO wemovies.cinema (c_name, c_theater) values ('CGV 수원점', '4');
INSERT INTO wemovies.cinema (c_name, c_theater) values ('CGV 의정부점', '4');
SELECT * FROM wemovies.cinema;
DROP TABLE wemovies.cinema;

CREATE TABLE wemovies.theater(
	theater int(10) not null,
    t_time varchar(20) not null primary key
);
insert into wemovies.theater (theater, t_time) values (4, '11:00');
select * from wemovies.theater;
drop table wemovies.theater;

select * from wemovies.onscreen_movie;
drop table wemovies.onscreen_movie;

<<<<<<< HEAD
select * from information_schema.table_constraints where table_name = 'movie_detail';
alter table movie_detail drop foreign key ibfk_1;
delete table movie_detail;

SET foreign_key_checks = 0;
drop table TABLENAME
SET foreign_key_checks = 1;

CREATE TABLE wemovies.onscreen_movie(
	title varchar(50) not null,
	genres varchar(50) not null,
	overview varchar(500) not null,
	cinema varchar(50) not null,
	screen varchar(50) not null,
	start_day varchar(50) not null,
	end_day varchar(50) not null,
	showtime varchar(50) not null,
	poster_path varchar(200) not null,
	runtime varchar(50)not null
)

select * from wemovies.onscreen_movie;
drop table wemovies.onscreen_movie;
