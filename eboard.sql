** cos.jar 파일 **
WebContent - WEB-INF - lib - cos.jar 넣기


**DB**
create table eboard(
num number,
fileName varchar2(200),
fileRealName varchar2(200),
title varchar2(200),
subtitle varchar2(200),
term varchar2(50),
content varchar2(2000)
);
create sequence eboard_seq;

commit;
select * from eboard;
drop table eboard;
drop sequence eboard_seq;


