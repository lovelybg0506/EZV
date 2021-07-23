create table qboard(
num number,
id varchar2(20),
place varchar2(20),
type varchar2(20),
subject varchar2(100),
reg_date date,
ref number,
re_step number,
re_level number,
content varchar2(2000),
foreign key(id) references ezv_member(id)
);

create sequence qboard_seq;

commit;