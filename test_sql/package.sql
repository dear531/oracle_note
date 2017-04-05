/* 定义包的规范 */
create or replace package pack_emp is
	function fun_avg_sal(num_deptno number) return number;
	procedure pro_regulate_sal(var_job varchar2, num_proportion number);
end pack_emp;
/

/* 定义包的主体 */
create or replace package body pack_emp is
	function fun_avg_sal(num_deptno number) return number is
		num_avg_sal number;
	begin
		select avg(sal)
		into num_avg_sal
		from emp
		where deptno = num_deptno;
		return(num_avg_sal);
	exception
		when no_data_found then
			dbms_output.put_line('该部门不存员工号为'||num_deptno||'的员工记录');
		return 0;
	end fun_avg_sal;
	procedure pro_regulate_sal(var_job varchar2, num_proportion number) is
	begin
		update emp
		set sal = sal * (1 + num_proportion)
		where job = var_job;
	end pro_regulate_sal;
end pack_emp;
/

/* 包中的函数和存储过程的调用 */
declare
	num_deptno emp.deptno%type;
	var_job emp.job%type;
	num_avg_sal emp.sal%type;
	num_proportion number;
begin
	num_deptno := 10;
	num_avg_sal := pack_emp.fun_avg_sal(num_deptno);
	dbms_output.put_line(num_deptno||'工资是'||num_avg_sal);

	var_job := 'SALESMAN';
	num_proportion := 0.1;
	pack_emp.pro_regulate_sal(var_job, num_proportion);
end;
/

/* 以下是调用一个函数显示的结果，以及一个存储过程前后对表操作的结果 */
SQL> select sal from emp where job = 'SALESMAN';

       SAL
----------
      2304
      1800
      1800
      2160

SQL> get tmp3
  1  declare
  2     num_deptno emp.deptno%type;
  3     var_job emp.job%type;
  4     num_avg_sal emp.sal%type;
  5     num_proportion number;
  6  begin
  7     num_deptno := 10;
  8     num_avg_sal := pack_emp.fun_avg_sal(num_deptno);
  9     dbms_output.put_line(num_deptno||'工资是'||num_avg_sal);
 10     var_job := 'SALESMAN';
 11     num_proportion := 0.1;
 12     pack_emp.pro_regulate_sal(var_job, num_proportion);
 13* end;
 14  /
10工资是2916.67

PL/SQL procedure successfully completed.

SQL> select sal from emp where job = 'SALESMAN';

       SAL
----------
    2534.4
      1980
      1980
      2376


