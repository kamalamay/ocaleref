SET LINES 160 PAGES 5000 TIMING ON;

SELECT /*+PARALLEL(8)*/ SID, SERIAL#, OPNAME, ROUND(TIME_REMAINING/60, 2)TIME_MINUTE FROM V$SESSION_LONGOPS
WHERE SID IN(SELECT SID FROM V$SESSION WHERE UPPER(PROGRAM) LIKE '%RMAN%' AND STATUS='ACTIVE') AND TIME_REMAINING > 0;

SELECT SID, SERIAL#, EVENT, SECONDS_IN_WAIT FROM V$SESSION WHERE SID IN (SELECT SID FROM V$SESSION WHERE UPPER(PROGRAM) LIKE '%RMAN%');

SELECT SID, START_TIME, TOTALWORK SOFAR, ROUND((SOFAR/TOTALWORK) * 100,2) PCT_DONE
FROM V$SESSION_LONGOPS
WHERE TOTALWORK > SOFAR AND UPPER(OPNAME) NOT LIKE '%AGGREGATE%' AND UPPER(OPNAME) LIKE 'RMAN%';

COL CLIENT_INFO FORMAT A40;
COL EVENT FORMAT A40;
SELECT SID, SPID, CLIENT_INFO, EVENT, SECONDS_IN_WAIT, P1, P2, P3 FROM V$PROCESS P, V$SESSION S WHERE P.ADDR = S.PADDR AND UPPER(CLIENT_INFO) LIKE 'RMAN CHANNEL=%';

COL SIDSERIAL FOR A20;
SELECT SID||','||SERIAL# sidserial, CONTEXT, SOFAR, TOTALWORK, ROUND(SOFAR/TOTALWORK*100,2) "%_COMPLETE", START_TIME
FROM V$SESSION_LONGOPS
WHERE UPPER(OPNAME) LIKE 'RMAN%' AND UPPER(OPNAME) NOT LIKE '%AGGREGATE%' AND TOTALWORK != 0 AND SOFAR <> TOTALWORK
ORDER BY 6 DESC;

---
COL SIDSERIAL FOR A20;
SELECT SID||','||SERIAL# sidserial, CONTEXT, SOFAR, TOTALWORK, ROUND(SOFAR/TOTALWORK*100,2) "%_COMPLETE", START_TIME
FROM V$SESSION_LONGOPS
WHERE /*UPPER(OPNAME) LIKE 'RMAN%' AND */UPPER(OPNAME) NOT LIKE '%AGGREGATE%' AND TOTALWORK != 0 AND SOFAR <> TOTALWORK
ORDER BY 6 DESC;

COL SIDSERIAL FOR A15;
COL OPNAME FOR A30;
SELECT /*+PARALLEL(8)*/
SID||','||SERIAL# sidserial, OPNAME, ROUND(TIME_REMAINING/60, 2)TIME_MINUTE, ROUND(SOFAR/TOTALWORK*100,2) "%_COMPLETE", START_TIME
FROM V$SESSION_LONGOPS
WHERE SID IN(SELECT SID FROM V$SESSION WHERE UPPER(PROGRAM) LIKE '%SQL%' AND STATUS='ACTIVE') AND TIME_REMAINING > 0 ORDER BY 5 ;

COL SIDSERIAL FOR A15;
COL OPNAME FOR A35;
COL START_TIME FOR A20;
SELECT /*+PARALLEL(8)*/ INST_ID,SID||','||SERIAL# sidserial,
SQL_ID, OPNAME, ROUND(TIME_REMAINING/60, 2)TIME_MINUTE, ROUND(SOFAR/TOTALWORK*100,2) "%_COMPLETE", to_char(START_TIME, 'DD-MM-YYYY HH24:MI:SS')START_TIME
FROM GV$SESSION_LONGOPS
WHERE SID IN(SELECT SID FROM GV$SESSION WHERE STATUS='ACTIVE') AND TIME_REMAINING > 0 ORDER BY 5 ;
