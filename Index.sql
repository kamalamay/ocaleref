<<<<<<< HEAD
SET LINES 150 PAGES 5000 TIMING ON;
COL IDX FOR A40;
COL TBL FOR A40;
COL COLUMN_NAME FOR A25;
COL DEGREE FOR A6;
SELECT /*+ PARALLEL(2) */ X.TABLE_OWNER||'.'||X.TABLE_NAME TBL, X.OWNER||'.'||X.INDEX_NAME IDX, Y.COLUMN_NAME, Y.COLUMN_POSITION, LOGGING, STATUS, DEGREE, TABLESPACE_NAME
FROM DBA_INDEXES X JOIN DBA_IND_COLUMNS Y ON X.INDEX_NAME=Y.INDEX_NAME
WHERE UPPER(X.TABLE_OWNER)||'.'||UPPER(X.TABLE_NAME)='&TBL_NAME_KAPITAL' ORDER BY 2,4;
=======
SET LINES 150 PAGES 5000 TIMING ON;
COL IDX FOR A40;
COL TBL FOR A40;
COL COLUMN_NAME FOR A25;
COL DEGREE FOR A6;
SELECT /*+ PARALLEL(2) */ X.TABLE_OWNER||'.'||X.TABLE_NAME TBL, X.OWNER||'.'||X.INDEX_NAME IDX, Y.COLUMN_NAME, Y.COLUMN_POSITION, LOGGING, STATUS, DEGREE, TABLESPACE_NAME
FROM DBA_INDEXES X JOIN DBA_IND_COLUMNS Y ON X.INDEX_NAME=Y.INDEX_NAME
WHERE UPPER(X.TABLE_OWNER)||'.'||UPPER(X.TABLE_NAME)='&TBL_NAME_KAPITAL' ORDER BY 2,4;
>>>>>>> 327b5e2c2d7f1e6078f5d0c4cff716a75d749ca2
