/* 创建行级出发器用表 */
create table goods
(
	id int primary key,   
	good_name varchar2(50)
);

/* 创建行级触发器主键列用序列号 */
create sequence seq_id;

/* 创建行级触发器 */
create or replace trigger tri_insert_good
   before insert 
   on goods
   for each row
begin   
   select seq_id.nextval
   into :new.id
   from dual;
end;

/* 查看表格结构 */
SQL> desc goods;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(38)
 GOOD_NAME                                          VARCHAR2(50)

/* 向实验表中插入数据 */
SQL> insert into goods (good_name) values ('name001');

1 row created.

SQL> insert into goods values(3, 'name002');

1 row created.

/*
即便在id列指定了字段值，但在入表格之前，
触发器也都将其的值, 改写为了序列的值
*/

SQL> column good_name format a20
SQL> select * from goods;

        ID GOOD_NAME
---------- --------------------
         1 name001
         2 name002


