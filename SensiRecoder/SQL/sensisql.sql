drop table sensitable;
drop table usertable;

CREATE USER sensi
IDENTIFIED BY sensi
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
/

GRANT DBA TO sensi ;
GRANT UNLIMITED TABLESPACE TO sensi ;


create table usertable(
 name	VARCHAR2(100) PRIMARY KEY,
 password	VARCHAR2(100) NOT NULL
);

insert into usertable values ('admin', 'pass');


create table sensitable (
 name	VARCHAR2(100), 
 game	VARCHAR2(100),
 n	NUMBER(6, 3),
 cm180	NUMBER(6, 3),
 cm360	NUMBER(6, 3)
);