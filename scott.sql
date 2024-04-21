-- �޿� �Ѿ�
select sum(sal) from emp;

-- Ŀ�̼� �Ѿ�
select sum(comm) from emp;

-- �޿� ���
select avg(sal) from emp;

-- Ŀ�̼� ���
select avg(comm) from emp;

-- �ִ� �޿�, �ּ� �޿�
select max(sal), min(sal) from emp;

-- Ŀ�̼� �޴� ��� ��
select count(comm) from emp;

-- ��ü ��� ���� Ŀ�̼� �޴� ��� ��
select count(*), count(comm) from emp;

-- ������ ����
select count(job) from emp;

-- �ߺ��� ������ ������ ����
select count(distinct job) from emp;

-- �μ� ��ȣ �׷�
select deptno from emp group by deptno;

-- �μ��� ��� �޿�
select deptno, avg(sal) from emp group by deptno;

-- �μ��� �ִ�, �ּ� �޿���
select deptno, max(sal), min(sal) from emp group by deptno;

-- �μ��� ��� ���� Ŀ�̼ǹ޴� ��� ��
select deptno, count(*), count(comm) from emp group by deptno;

--having
select deptno, avg(sal) from emp group by deptno having avg(sal) >= 2000;

-- �μ��� �ִ�,�ּҰ��� ���ϵ� �ִ� �޿��� 2900 �̻��� �μ��� ���
select deptno, max(sal), min(sal) from emp group by deptno having max(sal) > 2900;

-- �̸��� scott�� ����� �μ��� ���
select ename, dname from emp, dept where emp.deptno = dept.deptno and ename = 'SCOTT';

-- �̸��� scott�� ����� �μ��� ��� (��Ī ���)
select ename, dname from emp e, dept d where e.deptno = d.deptno and ename = 'SCOTT';

-- ���� ������ ����Ͽ� ��� �޿����� �� ���� �޿��� �޴� ��� �˻�
select ename, sal from emp where sal > (select avg(sal) from emp);

-- ���� �� �����ڿ� �Բ� ���
select ename, sal, deptno from emp where deptno in (
select distinct deptno from emp where sal >= 3000);

-- 30�� �Ҽ� ����� �� �޿��� ���� ���� �޴� ������� �� ���� �޿��� �޴� ����� �̸�, �޿� ���
select ename, sal from emp where sal > all (
select sal from emp where deptno = 30);

-- �μ� ��ȣ�� 30���� ������� �޿� �� ���� ���� ������ ���� �޿��� �޴� ����� �̸� �޿� ���
select ename, sal from emp where sal > any (
select sal from emp where deptno = 30);

--create table ��ɾ�
create table emp01(
    empno   number(4),
    ename   varchar(20),
    sal     number(7, 2)
);
desc emp01;
select * from emp01;

-- ������ ���̺��� ����� ������ ���� ���̺� ���� ���
create table emp02 as select 