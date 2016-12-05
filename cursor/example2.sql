--------------------------------------------------------
--  DDL for Table XSB
--------------------------------------------------------

  CREATE TABLE "SCOTT"."XSB" 
   (    "学号" CHAR(6 BYTE), 
    "姓名" CHAR(8 BYTE), 
    "性别" CHAR(2 BYTE) DEFAULT '男', 
    "出生时间" DATE, 
    "专业" CHAR(12 BYTE), 
    "总学分" NUMBER(2,0), 
    "备注" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.XSB
SET DEFINE OFF;
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151114','周何骏  ','男',to_date('25-9月 -98','DD-MON-RR'),'计算机      ',90,null);
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151101','王林    ','男',to_date('02-10月-97','DD-MON-RR'),'计算机      ',50,null);
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151103','王燕    ','女',to_date('10-6月 -96','DD-MON-RR'),'计算机      ',50,null);
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151202','王林    ','男',to_date('29-1月 -96','DD-MON-RR'),'通信工程    ',40,'有一门课不及格，待补考');
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151108','林一帆  ','男',to_date('08-5月 -96','DD-MON-RR'),'计算机      ',52,'已提前修完一门课');
Insert into SCOTT.XSB (学号,姓名,性别,出生时间,专业,总学分,备注) values ('151204','马琳琳  ','女',to_date('02-10月-96','DD-MON-RR'),'通信工程    ',42,null);
