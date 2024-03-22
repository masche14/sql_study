select *
from emp
where ename like 'F%'
/
select *
from emp
where ename like '%A%'
/
select *
from emp
where comm is null

/
select *
from emp
where comm is not null

/
select *
from emp
where ename like '__A%'
/
select *
from emp
where ename not like '%A%'
/
select *
from emp
order by ename
/
select *
from emp
order by hiredate desc
/
select *
from emp
order by sal desc, ename asc
/
select *
from emp
where hiredate = (select max(hiredate) from emp)
/
select *
from emp
where hiredate = max(hiredate)
/
select *
from dual
/
select -10, abs(-10)
from dual
/
select 34.5678, floor(34.5678)
from dual
/
select 34.5678, round(34.5678)
from dual
/
select 34.5678, round(34.56789, 2)
from dual
/
select 34.5678, round(34.5678, -1)
from dual
/
select trunc(34.5678, 2), trunc(34.5678, -1), trunc(34.5678)
from dual
/
select mod(27,2), mod(27,5), mod(27,7)
from dual
/
select 'Welcome to Oracle', upper('Welcome to Oracle')
from dual
/
select 'Welcome to Oracle', lower('Welcome to Oracle')
from dual
/
select 'WELCOME TO ORACLE', initcap('WELCOME TO ORACLE')
from dual
/
select length('oracle'), length('오라클')
from dual
/
select substr('Welcome to Oracle', 4, 3)
from dual

/
select substr('Welcome to Oracle', -4, 3)
from dual

/
select substr(hiredate, 1, 2) 년도 , substr(hiredate, 4, 2) 달
from emp
/
select *
from emp
where substr(hiredate, 4, 2)='09'
/
select instr('WELCOME TO ORACLE', 'O')
from dual
/
select instr('WELCOME TO ORACLE', 'O', 6, 2)
from dual
/
select lpad('Oracle', 20, '#')
from dual

/
select rpad('Oracle', 20, '#')
from dual

/
select rtrim('  Oracle  ')
from dual
/
select trim('a' from 'aaaaaaOracleaaaaaa' )
from dual
/
select trim(' Oracle ' )
from dual
/
select sysdate
from dual
/
select sysdate - 1 어제, sysdate 오늘, sysdate+1 내일
from dual
/
select hiredate, round(hiredate, 'month')
from emp
/
select hiredate, trunc(hiredate, 'month')
from emp
/
select ename, sysdate, hiredate, months_between(sysdate, hiredate)
from emp
/
select ename, sysdate, hiredate, trunc(months_between(sysdate, hiredate))
from emp
/
select ename, hiredate, add_months(hiredate, 6)
from emp
/
select hiredate, last_day(hiredate)
from emp
/
