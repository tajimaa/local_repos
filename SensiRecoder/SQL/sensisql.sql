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
 uname		VARCHAR2(50) 	PRIMARY KEY,
 password	VARCHAR2(100) 	NOT NULL
);

insert into usertable values ('admin', 'pass');
takeda pass
tajima 
tanaka 
saigou 
inou
ishiuchi
power
po
osushi





create table sensitable (
 uname			VARCHAR2(50),
 registered		DATE 			NOT NULL,
 game			VARCHAR2(100) 	NOT NULL,
 sensitivity	NUMBER(6, 3) 	NOT NULL,
 cm180			NUMBER(6, 3) 	NOT NULL,
 cm360			NUMBER(6, 3) 	NOT NULL,
 CONSTRAINT PK_name PRIMARY KEY(uname, registered),
 CONSTRAINT FK_sensi_name FOREIGN KEY(uname) REFERENCES usertable(uname)
);


create table devicetable (
 uname		VARCHAR2(50),
 mouse		VARCHAR2(100),
 mousepad	VARCHAR2(100),
 mousesole	VARCHAR2(100),
 monitor	VARCHAR2(100),
 CONSTRAINT FK_device_name FOREIGN KEY(uname) REFERENCES usertable(uname)
);

insert into devicetable values('takeda', 'ねずみ', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('tajima', 'ロギクール', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('tanaka', 'ロジクール', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('saigou', 'ロジックロール', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('inou', '12345', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('ishiuchi', '@;:[ +*]\^||-=/?\.,!"#$%&', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('power', 'localhost8080', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('po', 'public static void main() String args[ ]', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('osushi', null, 'ネズミパッド', 'ねずみそうる', 'もにたー');
