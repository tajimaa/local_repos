CREATE USER SensiRecoder
IDENTIFIED BY sensi
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
/

GRANT DBA TO SensiRecoder ;
GRANT UNLIMITED TABLESPACE TO SensiRecoder ;

drop table sensitable;
drop table devicetable;
drop table usertable;


create table usertable(
 uname		VARCHAR2(50) 	PRIMARY KEY,
 password	VARCHAR2(100) 	NOT NULL
);

takeda --名前と同じ

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
 dpi			NUMBER(5)		NOT NULL,
 cm180			NUMBER(6, 3) 	NOT NULL,
 cm360			NUMBER(6, 3) 	NOT NULL,
 CONSTRAINT PK_name PRIMARY KEY(uname, registered),
 CONSTRAINT FK_sensi_name FOREIGN KEY(uname) REFERENCES usertable(uname)
);

insert into sensitable values ('takeda', sysdate, 'Apex_Legends', 1.2, 800, 21.65, 43.3);
insert into sensitable values ('takeda', sysdate, 'Apex_Legends', 1.2, 800, 21.65, 43.3);
insert into sensitable values ('tajima', sysdate, '1v1.lol', 23, 800, 4.07, 8.13);
insert into sensitable values ('tanaka', sysdate, 'BattleBit_Remasterd', 82.3, 800, 13.89, 27.78);
insert into sensitable values ('saigou', sysdate, 'Bttlefield_4', 32.2, 800, 3.17, 6.34);
insert into sensitable values ('inou', sysdate, 'Borderlands_3', 13.5, 400, 12.1, 24.19);
insert into sensitable values ('ishiuchi', sysdate, 'Call_of_Duty_BO4', 41.2, 400, 4.21, 8.41);
insert into sensitable values ('power', sysdate, 'Valorant', 1.2, 1600, 3.4, 6.8);
insert into sensitable values ('po', sysdate, 'warframe', 0.5, 9800, 4.24, 8.28);
insert into sensitable values ('osushi', sysdate, 'Arma_3', 0.4, 2400, 7.9, 15.8);



create table devicetable (
 uname		VARCHAR2(50),
 mouse		VARCHAR2(100),
 mousepad	VARCHAR2(100),
 mousesole	VARCHAR2(100),
 monitor	VARCHAR2(100),
 CONSTRAINT FK_device_name FOREIGN KEY(uname) REFERENCES usertable(uname)
);

insert into devicetable values('takeda', 'ねずみ', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('takeda', 'ねずみ', 'ネズミパッド', 'ねずみそうる', 'もにたー');
insert into devicetable values('tajima', 'ロギクール', 'すし', 'すべりがいい', '120fps');
insert into devicetable values('tanaka', 'ロジクール', 'ガラス製のやつ', 'ぶつぶつしてる', '240fps');
insert into devicetable values('saigou', 'ロジックロール', 'でっかいやつ', '100均のやつ', '360fps');
insert into devicetable values('inou', '12345', '________><', 'select from emp;', '1022/4/14 12:52:20');
insert into devicetable values('ishiuchi', '@;:[ +*]\^||-=/?\.,!"#$%&', 'マウスパッド', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', 'てすとでーた');
insert into devicetable values('power', 'localhost8080', '''''''''''''''''', 'まうすまうすぱそこんまうす', '2160p');
insert into devicetable values('po', 'public static void main() String args[ ]', 'いしうち', 'りょう', 'わお');
insert into devicetable values('osushi', null, 'まぐろ', 'いか', 'さーもん');

col uname format a20
col mouse format a20
col mousepad format a20
col mousesole format a20
col monitor format a20
col registerd format a30
col game format a20
col sensitivity format a40
col dpi format a40
col cm180 format a40
col cm360 format a40
col password format a70
set line 200


