SET LINES 200 PAGES 5000;
COL INST_ID FORMAT 9;
COL RESOURCE_NAME FORMAT A25;
COL CURRENT_UTILIZATION FORMAT 9;
COL MAX_UTILIZATION FORMAT 9;
COL INITIAL_ALLOCATION FORMAT A10;
COL LIMIT_VAL FORMAT A10;
SELECT /*+PARALLEL(4)*/ RESOURCE_NAME, CURRENT_UTILIZATION CUR_UTIL, MAX_UTILIZATION MAX_UTIL, INITIAL_ALLOCATION INIT_ALLOC, LIMIT_VALUE LIMIT_VAL FROM GV$RESOURCE_LIMIT;

SET LINES 200 PAGES 5000;
COL INST_ID FORMAT 9;
COL RESOURCE_NAME FORMAT A25;
COL CURRENT_UTILIZATION FORMAT 9;
COL MAX_UTILIZATION FORMAT 9;
COL INIT_ALLOC FORMAT A10;
COL LIMIT_VAL FORMAT A10;
SELECT /*+PARALLEL(4)*/ INST_ID, RESOURCE_NAME, CURRENT_UTILIZATION CUR_UTIL, MAX_UTILIZATION MAX_UTIL, INITIAL_ALLOCATION INIT_ALLOC, LIMIT_VALUE LIMIT_VAL FROM GV$RESOURCE_LIMIT;
