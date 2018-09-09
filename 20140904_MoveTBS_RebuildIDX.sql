SELECT * FROM DICT WHERE TABLE_NAME LIKE '%TABLESPACE%';

SELECT * FROM DBA_TABLESPACES;

SELECT * FROM DBA_TABLES WHERE OWNER='C##SCOTT';

SELECT * FROM DBA_INDEXES WHERE TABLE_OWNER||'.'||TABLE_NAME='C##SCOTT.EMP';

SELECT * FROM DBA_DATA_FILES --WHERE TABLESPACE_NAME='KELINCIDATA';

CREATE TABLESPACE MOVINGTBS DATAFILE '/oradata/kelinci/MOVINGTBS_01.dbf' SIZE 1024M REUSE AUTOEXTEND OFF LOGGING;

ALTER USER C##SCOTT QUOTA UNLIMITED ON MOVINGTBS;

ALTER TABLE C##SCOTT.EMP MOVE TABLESPACE MOVINGTBS;

ALTER INDEX C##AZIZPW.EMP_EMPNO_IDX REBUILD TABLESPACE MOVINGTBS;

ALTER USER C##SCOTT QUOTA UNLIMITED ON KELINCIDATA;

SELECT 'ALTER TABLE '||OWNER||'.'||TABLE_NAME||' MOVE TABLESPACE KELINCIDATA;'SCRIPT FROM DBA_TABLES WHERE OWNER='C##SCOTT';

ALTER TABLE C##SCOTT.DEPT MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##SCOTT.BONUS MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##SCOTT.SALGRADE MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##SCOTT.EMP MOVE TABLESPACE KELINCIDATA;

ALTER INDEX C##AZIZPW.EMP_EMPNO_IDX REBUILD TABLESPACE KELINCIDATA;

SELECT * FROM DATABASE_PROPERTIES WHERE PROPERTY_NAME LIKE '%TABLESPACE';

ALTER DATABASE DEFAULT TABLESPACE KELINCIDATA;

DROP TABLESPACE MOVINGTBS INCLUDING CONTENTS AND DATAFILES;

SELECT 'ALTER TABLE '||OWNER||'.'||TABLE_NAME||' MOVE TABLESPACE KELINCIDATA;'SCRIPT FROM DBA_TABLES WHERE OWNER='C##AZIZPW';
ALTER TABLE C##AZIZPW.VASSADWANKR MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.DEPARTMENTS MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.EMPLOYEES MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.JOBS MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.JOB_HISTORY MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.LOCATIONS MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.COUNTRIES MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.REGIONS MOVE TABLESPACE KELINCIDATA;
ALTER TABLE C##AZIZPW.TES MOVE TABLESPACE KELINCIDATA;

SELECT * FROM DBA_TABLES WHERE OWNER='C##AZIZPW';

SELECT * FROM DBA_INDEXES WHERE TABLE_OWNER='C##AZIZPW';

ALTER INDEX C##AZIZPW.EMPLOYEESID_IDX REBUILD TABLESPACE KELINCIDATA;

SELECT * FROM V$LICENSE;