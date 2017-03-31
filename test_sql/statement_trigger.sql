create table dept_log
(
	operate_tag varchar2(10),
	operate_time date
)
/
/*
创建记录事件操作表
SQL> get tmp
  1  create table dept_log
  2  (
  3     operate_tag varchar2(10),
  4     operate_time date
  5* )
SQL> /

Table created.

SQL> describe dept_log
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OPERATE_TAG                                        VARCHAR2(10)
 OPERATE_TIME                                       DATE
*/

/* 创建触发器 */
create or replace trigger tri_dept
	before insert or update or delete
	on dept
declare
	var_tag dept_log.operate_tag%type;
begin
	if inserting then
		var_tag := '插入';
	elsif updating then
		var_tag := '更新';
	elsif deleting then
		var_tag := '删除';
	end if;
	insert into dept_log
	values(var_tag, sysdate);
end tri_dept;
/

/*
创建触发器的执行过程
SQL> create or replace trigger tri_dept   
  2     before insert or update or delete
  3     on dept
  4  declare   
  5     var_tag dept_log.operate_tag%type;
  6  begin   
  7     if inserting then
  8             var_tag := '插入';
  9     elsif updating then
 10             var_tag := '更新';
 11     elsif deleting then
 12             var_tag := '删除';
 13     end if;
 14     insert into dept_log
 15     values(var_tag, sysdate);
 16  end tri_dept;
 17  /

Trigger created.

*/

/*
执行sql语句使其事件发生
*/

SQL> insert into dept values (82, 'name82', 'loc82')

1 row created.

SQL> update dept set deptno=82 where deptno = 82;

1 row updated.

SQL> delete dept where deptno = 82;

1 row deleted.

/* 查看记录dept表事件的数据库 */
SQL> select * from dept_log;

OPERATE_TAG                    OPERATE_TIME
------------------------------ ---------------
插入                           31-MAR-17
更新                           31-MAR-17
删除                           31-MAR-17

/* 事件均被执行 */
