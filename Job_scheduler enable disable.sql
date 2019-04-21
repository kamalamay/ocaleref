<<<<<<< HEAD
Select job_name, enabled from DBA_SCHEDULER_JOBS WHERE job_name = 'GATHER_STATS_JOB';

COL JOBNAME FOR A40;
COL JOB_CREATOR FOR A10;
COL PROGRAM_OWNER FOR A10;
COL PROGRAM_NAME FOR A10;
COL SCHEDULE_OWNER FOR A10;
SELECT OWNER||'.'||JOB_NAME JOBNAME, JOB_CREATOR, PROGRAM_OWNER, PROGRAM_NAME, SCHEDULE_OWNER, START_DATE, ENABLED, STATE, LAST_START_DATE
FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME LIKE '%BACKUP%';

SELECT * FROM DICT WHERE TABLE_NAME LIKE '%JOB%';

SELECT * FROM DBA_JOBS;

exec dbms_scheduler.disable('JOBNAME');

SELECT JOB_NAME, ENABLED FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME = 'JOBNAME';

exec dbms_scheduler.enable('JOBNAME');

--Jalankan job
BEGIN
  DBMS_SCHEDULER.RUN_JOB('JOBBACKUPARC');
END;
=======
Select job_name, enabled from DBA_SCHEDULER_JOBS WHERE job_name = 'GATHER_STATS_JOB';

COL JOBNAME FOR A40;
COL JOB_CREATOR FOR A10;
COL PROGRAM_OWNER FOR A10;
COL PROGRAM_NAME FOR A10;
COL SCHEDULE_OWNER FOR A10;
SELECT OWNER||'.'||JOB_NAME JOBNAME, JOB_CREATOR, PROGRAM_OWNER, PROGRAM_NAME, SCHEDULE_OWNER, START_DATE, ENABLED, STATE, LAST_START_DATE
FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME LIKE '%BACKUP%';

SELECT * FROM DICT WHERE TABLE_NAME LIKE '%JOB%';

SELECT * FROM DBA_JOBS;

exec dbms_scheduler.disable('JOBNAME');

SELECT JOB_NAME, ENABLED FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME = 'JOBNAME';

exec dbms_scheduler.enable('JOBNAME');

--Jalankan job
BEGIN
  DBMS_SCHEDULER.RUN_JOB('JOBBACKUPARC');
END;
>>>>>>> 327b5e2c2d7f1e6078f5d0c4cff716a75d749ca2
/