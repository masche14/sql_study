-- 급여 총액
select sum(sal) from emp;

-- 커미션 총액
select sum(comm) from emp;

-- 급여 평균
select avg(sal) from emp;

-- 커미션 평균
select avg(comm) from emp;

-- 최대 급여, 최소 급여
select max(sal), min(sal) from emp;

-- 커미션 받는 사원 수
select count(comm) from emp;

-- 전체 사원 수와 커미션 받는 사원 수
select count(*), count(comm) from emp;

-- 직업의 개수
select count(job) from emp;

-- 중복을 제거한 직업의 개수
select count(distinct job) from emp;

-- 부서 번호 그룹
select deptno from emp group by deptno;

-- 부서별 평균 급여
select deptno, avg(sal) from emp group by deptno;

-- 부서별 최대, 최소 급여ㅑ
select deptno, max(sal), min(sal) from emp group by deptno;

-- 부서별 사원 수와 커미션받는 사원 수
select deptno, count(*), count(comm) from emp group by deptno;

--having
select deptno, avg(sal) from emp group by deptno having avg(sal) >= 2000;

-- 부서의 최대,최소값을 구하되 최대 급여가 2900 이상인 부서만 출력
select deptno, max(sal), min(sal) from emp group by deptno having max(sal) > 2900;

-- 이름이 scott인 사원의 부서명 출력
select ename, dname from emp, dept where emp.deptno = dept.deptno and ename = 'SCOTT';

-- 이름이 scott인 사원의 부서명 출력 (별칭 사용)
select ename, dname from emp e, dept d where e.deptno = d.deptno and ename = 'SCOTT';

-- 서브 쿼리를 사용하여 평균 급여보다 더 많은 급여를 받는 사원 검색
select ename, sal from emp where sal > (select avg(sal) from emp);

-- 다중 행 연산자와 함께 사용
select ename, sal, deptno from emp where deptno in (
select distinct deptno from emp where sal >= 3000);

-- 30번 소속 사원들 중 급여를 가장 많이 받는 사원보다 더 많은 급여를 받는 사원의 이름, 급여 출력
select ename, sal from emp where sal > all (
select sal from emp where deptno = 30);

-- 부서 번호가 30번인 사원들의 급여 중 가장 작은 값보다 많은 급여를 받는 사원의 이름 급여 출력
select ename, sal from emp where sal > any (
select sal from emp where deptno = 30);

--create table 명령어
create table emp01(
    empno   number(4),
    ename   varchar(20),
    sal     number(7, 2)
);
desc emp01;
select * from emp01;

-- 지정한 테이블의 내용과 구조를 갖는 테이블 생성 방법
create table emp02 as select 