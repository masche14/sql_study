select *
from emp
where deptno = 10
/
select *
from emp
where hiredate < '1982-01-01'
/
select *
from emp
where deptno = 10 or job = 'MANAGER'
/
select *
from emp
where comm in (300, 500, 1400)
/
select *
from emp
where sal not between 2000 and 3000
/
select *
from emp
where hiredate between '1987.01.01' and '1987.12.31'
/
select *
from emp
where comm not in (300, 500, 1400)
/
select *
from emp
where ename like '%A%'
/
select *
from emp
where ename like '%N'
/
select *
from emp
where ename not like '%A%'
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
order by sal desc
/
select substr('Welcome to Oracle', 4, 3)
from dual
/
select *
from emp
where substr(hiredate, 4, 2) = '09'
/
select ename, sysdate, hiredate, months_between(sysdate, hiredate)
from emp
/
select sysdate, to_char(sysdate, 'YYYY-MM-DD')
from dual
/
select hiredate, to_char(hiredate, 'YYYY/MM/DD DAY')
from emp
/
select to_char(sysdate, 'YYYY/MM/DD, HH24:MI:SS')
from dual
/
select ename, sal, to_char(sal, 'L999,999')
from emp
/
select to_char(123456, '000000000')
, to_char(123456, '999999999')
from dual
/
select ename, hiredate
from emp
where hiredate=to_date(19810220, 'YYYY/MM/DD')

/
select trunc(sysdate-to_date('2008/01/01', 'YYYY/MM/DD'))
from dual
/
select to_number('20,000', '99,999') - to_number('10,000', '99,999')
from dual
/
select ename, deptno,
decode(deptno, 10, 'ACCOUNTING',
20, 'RESEARCH',
30, 'SALES',
40, 'OPERATIONS') as dname
from emp
/
select ename, deptno,
case deptno when 10 then 'ACCOUNTING'
when 20 then 'RESEARCH'
when 30 then 'SALES'
when 40 then 'OPERATIONS'
end as dname
from emp
/
select avg(sal)
from emp
group by deptno
/
select ename, deptno, sal, sum(sal) over (partition by deptno order by sal desc)
from emp
/
select count(job)
from emp
/
select count(distinct job)
from emp
/
select deptno, max(sal) as max_sal, min(sal) as min_sal
from emp
group by deptno
/
select deptno, avg(sal) as avg_sal
from emp
group by deptno
having avg(sal) >= 2000
/
select e.ename, e.deptno, d.dname
from emp e
join dept d
on e.deptno = d.deptno
/
select ename, dname
from emp, dept
where emp.deptno=dept.deptno
and ename = 'SCOTT'
/
select e.ename, d.dname, e.deptno
from emp e, dept d
where e.deptno = d.deptno
/
select e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal
/
select ename, (select ename from emp where deptno=(select deptno from emp where ename='SMITH') and job='MANAGER') as manger_name
from emp
where ename='SMITH'
/
select e.ename, e.sal, s.grade
from emp e
join salgrade s
on e.sal between s.losal and s.hisal
/
