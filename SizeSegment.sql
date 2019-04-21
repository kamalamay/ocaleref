SET LINES 150 PAGES 5000 TIMING ON ECHO ON;
COL OWNER FOR A20;
COL SEGMENT_NAME FOR A30;
SELECT OWNER,SEGMENT_NAME,SEGMENT_TYPE,TABLESPACE_NAME,ROUND(BYTES/1024/1024, 2)SIZE_MB FROM DBA_SEGMENTS WHERE OWNER='&OWNER' ORDER BY 5;

--SIZE TABLE
SELECT /*+PARALLEL(16)*/ ROUND(X.BYTES/1024/1024/1024, 2) SIZE_GB, X.* FROM DBA_SEGMENTS X WHERE SEGMENT_TYPE='TABLE' AND OWNER||'.'||SEGMENT_NAME='&TName';

SELECT OWNER,SEGMENT_NAME,SEGMENT_TYPE,TABLESPACE_NAME,ROUND(BYTES/1024/1024/1024, 2)SIZE_GB FROM DBA_SEGMENTS WHERE OWNER='&OWNER' AND SEGMENT_NAME='&SEG_NAME' ORDER BY 5;

--Size total per schema
SELECT ROUND(SUM(BYTES/1024/1024/1024), 2)SIZE_GB FROM DBA_SEGMENTS WHERE OWNER='&OWNER';