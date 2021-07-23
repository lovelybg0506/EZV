create table ezv_member(
    id varchar2(20) not null primary key,
    pwd1 varchar2(20) not null,
    name varchar2(20) not null,
    age number not null,
    gender varchar2(10) not null,
    te11 varchar2(10) not null,
    tel2 varchar2(10) not null,
    tel3 varchar2(10) not null,
    email varchar2(50),
    admin varchar2(10) default 'B'
    ); 
 
insert into ezv_member values('admin','1234','관리자','20','남자','010','1234','5678','admin@admin.co.kr','A');    
