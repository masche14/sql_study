insert into dept
values(10, 'Test', 'SEOUL')
/
insert into dept
values(10, 'Test', 'SEOUL')
/
select constraint_name, constraint_type, table_name
from user_constraints
/
select *
from user_cons_columns
/
insert into emp01
values(null, null, 'SALESMAN', 30)
/
select *
from emp01
/
create table emp03(
empno number(4) unique
, ename varchar2(10) not null
, job varchar2(9)
, deptno number(2)
)
/
insert into emp03
values(7499,'ALLEN','SALESMAN',30)
/
insert into emp03
values(7499,'ALLEN','SALESMAN',30)
/
insert into emp03
values(null, 'JONES', 'MANAGER', 20)
/
select * from emp03
/
create table emp04(
empno number(4) constraint emp04_empno_uk unique
, ename varchar2(10) constraint emp04_ename_nn not null
, job varchar2(9)
, deptno number(2)
)
/
select table_name, constraint_name
from user_constraints
where table_name in ('EMP04')
/
create table emp05(
empno number(4) constraint emp05_empno_pk primary key
, ename varchar2(10) constraint emp05_ename_nn not null
, job varchar2(9)
, deptno number(2)
)
/
insert into emp05
values(7499,'ALLEN','SALESMAN',30)
/
create table emp06(
empno number(4) constraint emp06_empno_pk primary key
, ename varchar2(10) constraint emp06_ename_nn not null
, job varchar2(9)
, deptno number(2) constraint emp06_deptno_fk references dept(deptno)
)
/
select table_name, constraint_type, constraint_name, r_constraint_name
from user_constraints
where table_name in ('DEPT','EMP')
/
create table emp07(
empno number(4) constraint emp07_empno_pk primary key
, ename varchar2(10) constraint emp07_ename_nn not null
, sal number(7,2) constraint emp07_sal_ck check(sal between 500 and 5000)
, gender varchar2(1)
constraint emp07_gender_ck check(gender in ('M','F'))
)
/
create table dept01(
deptno number(2) primary key
, dname varchar2(14)
, loc varchar2(13) default 'SEOUL'
)
/
insert into dept01(deptno, dname)
values(10,'ACCOUNTING')
/
create table emp02(
empno number(4)
, ename varchar2(10) not null
, job varchar2(9)
, deptno number(4)
, primary key(empno)
, unique(job)
, foreign key(deptno) references dept(deptno)
)
/
create table emp03(
empno number(4)
,
ename varchar2(10) constraint emp03_ename_nn not null
, job varchar2(9)
, deptno number(4)
, constraint emp03_empno_pk primary key(empno)
, constraint emp03_job_uk unique(job)
, constraint emp03_deptno_fk foreign key(deptno) references dept(deptno)
)
/
create table member01(
name varchar2(10)
, address varchar2(30)
, hphone varchar2(16)
, constraint member01_combo_pk primary key(name, hphone)
)
/
alter table emp01 add constraint emp01_empno_pk primary key(empno)
/
alter table emp01 add constraint emp01_deptno_fk foreign key(deptno) references dept(deptno)
/
insert into emp01
values(7499, 'SCOTT','SALESMAN',30)
/
alter table emp05 drop constraint emp05_empno_pk

/
alter table emp05 drop constraint emp05_ename_nn
/
