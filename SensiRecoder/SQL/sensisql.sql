CREATE USER sensi
IDENTIFIED BY sensi
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
/

GRANT DBA TO sensi ;
GRANT UNLIMITED TABLESPACE TO sensi ;

drop table sensitable;
drop table usertable;
drop table devicetable;


create table usertable(
 name	VARCHAR2(100) PRIMARY KEY,
 password	VARCHAR2(100) NOT NULL
);

insert into usertable values ('admin', 'pass');


create table sensitable (
 name	VARCHAR2(100), 
 game	VARCHAR2(100),
 sensitivity	NUMBER(6, 3),
 cm180	NUMBER(6, 3),
 cm360	NUMBER(6, 3)
);


create table devicetable (
 name	VARCHAR2(100),
 mouse	VARCHAR2(100),
 mousepad	VARCHAR2(100),
 mousesole	VARCHAR2(100),
 monitor	VARCHAR2(100)
);