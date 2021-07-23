create table ezv_review(
    rno number primary key,
    rid varchar2(20),
    rmovie varchar2(50),
    rcontent varchar2(1000),
    rdate date,
    rgrade varchar2(10)
);

select * from ezv_review;
delete ezv_review where rno=19;
commit;

select * from user_sequences;

delete sequence review_seq;

CREATE SEQUENCE seq_review_rno
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;
