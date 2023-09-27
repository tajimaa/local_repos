CREATE USER SensiRecorder
IDENTIFIED BY sensi
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
/

GRANT DBA TO SensiRecorder ;
GRANT UNLIMITED TABLESPACE TO SensiRecorder ;

drop table sensitable;
drop table devicetable;
drop table usertable;


create table usertable(
 uname		VARCHAR2(50) 	PRIMARY KEY,
 password	VARCHAR2(100) 	NOT NULL
);

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

create table devicetable (
 uname		VARCHAR2(50),
 mouse		VARCHAR2(100),
 mousepad	VARCHAR2(100),
 mousesole	VARCHAR2(100),
 monitor	VARCHAR2(100),
 CONSTRAINT FK_device_name FOREIGN KEY(uname) REFERENCES usertable(uname)
);


--insert usertable
takeda --名前と同じ
tajima 
tanaka 
saigou 
inou
ishiuchi
power
po
osushi

--insert sensitable
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

--insert devicetable
--insert into devicetable values('takeda', 'ねずみ', 'ネズミパッド', 'ねずみそうる', 'もにたー');
--insert into devicetable values('tajima', 'ロギクール', 'すし', 'すべりがいい', '120fps');
--insert into devicetable values('tanaka', 'ロジクール', 'ガラス製のやつ', 'ぶつぶつしてる', '240fps');
--insert into devicetable values('saigou', 'ロジックロール', 'でっかいやつ', '100均のやつ', '360fps');
--insert into devicetable values('inou', '12345', '________><', 'select from emp;', '1022/4/14 12:52:20');
--insert into devicetable values('ishiuchi', '@;:[ +*]\^||-=/?\.,!"#$%&', 'マウスパッド', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', 'てすとでーた');
--insert into devicetable values('power', 'localhost8080', '''''''''''''''''', 'まうすまうすぱそこんまうす', '2160p');
--insert into devicetable values('po', 'public static void main() String args[ ]', 'いしうち', 'りょう', 'わお');
--insert into devicetable values('osushi', null, 'まぐろ', 'いか', 'さーもん');

--update devicetable
update devicetable set uname = 'takeda', mouse = 'ねずみ', mousepad = 'ネズミパッド', mousesole = 'ねずみそうる', monitor = 'もにたー' where uname = 'takeda';
update devicetable set uname = 'tajima', mouse = 'ロギクール', mousepad = 'すし', mousesole = 'すべりがいい', monitor = '120fps' where uname = 'tajima';
update devicetable set uname = 'tanaka', mouse = 'ロジクール', mousepad = 'ガラス製のやつ', mousesole = 'ぶつぶつしてる', monitor = '240fps' where uname = 'tanaka';
update devicetable set uname = 'saigou', mouse = 'ロジックロール', mousepad = 'でっかいやつ', mousesole = '100均のやつ', monitor = '360fps' where uname = 'saigou';
update devicetable set uname = 'inou', mouse = '12345',mousepad =  '________><', mousesole = 'select from emp;', monitor = '1022/4/14 12:52:20' where uname = 'inou';
update devicetable set uname = 'ishiuchi', mouse = '@;:[ +*]\^||-=/?\.,!"#$%&', mousepad = 'マウスパッド', mousesole = 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', monitor = 'てすとでーた' where uname = 'ishiuchi';
update devicetable set uname = 'power', mouse = 'localhost8080', mousepad = '''''''''''''''''', mousesole = 'まうすまうすぱそこんまうす', monitor = '2160p' where uname = 'power';
update devicetable set uname = 'po', mouse = 'public static void main() String args[ ]', mousepad = 'いしうち', mousesole = 'りょう', monitor = 'わお' where uname = 'po';
update devicetable set uname = 'osushi', mouse = null, mousepad = 'まぐろ', mousesole = 'いか', monitor = 'さーもん' where uname = 'osushi';


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


