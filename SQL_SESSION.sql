<<<<<<< HEAD
DESC V$SESSION;

SADDR, SID, SERIAL#, AUDSID, PADDR, USER#, USERNAME, COMMAND, OWNERID, TADDR, LOCKWAIT, STATUS, SERVER, SCHEMA#, SCHEMANAME, OSUSER, PROCESS, MACHINE, PORT,
TERMINAL, PROGRAM, TYPE, SQL_ADDRESS, SQL_HASH_VALUE, SQL_ID, SQL_CHILD_NUMBER, SQL_EXEC_START, SQL_EXEC_ID, PREV_SQL_ADDR, PREV_HASH_VALUE, PREV_SQL_ID,
PREV_CHILD_NUMBER, PREV_EXEC_START, PREV_EXEC_ID, PLSQL_ENTRY_OBJECT_ID, PLSQL_ENTRY_SUBPROGRAM_ID, PLSQL_OBJECT_ID, PLSQL_SUBPROGRAM_ID, MODULE, MODULE_HASH,
ACTION, ACTION_HASH, CLIENT_INFO, FIXED_TABLE_SEQUENCE, ROW_WAIT_OBJ#, ROW_WAIT_FILE#, ROW_WAIT_BLOCK#, ROW_WAIT_ROW#, TOP_LEVEL_CALL#, LOGON_TIME,
LAST_CALL_ET, PDML_ENABLED, FAILOVER_TYPE, FAILOVER_METHOD, FAILED_OVER, RESOURCE_CONSUMER_GROUP, PDML_STATUS, PDDL_STATUS, PQ_STATUS, CURRENT_QUEUE_DURATION,
CLIENT_IDENTIFIER, BLOCKING_SESSION_STATUS, BLOCKING_INSTANCE, BLOCKING_SESSION, FINAL_BLOCKING_SESSION_STATUS, FINAL_BLOCKING_INSTANCE, FINAL_BLOCKING_SESSION,
SEQ#, EVENT#, EVENT, P1TEXT, P1, P1RAW, P2TEXT, P2, P2RAW, P3TEXT, P3, P3RAW, WAIT_CLASS_ID, WAIT_CLASS#, WAIT_CLASS, WAIT_TIME, SECONDS_IN_WAIT, STATE,
WAIT_TIME_MICRO, TIME_REMAINING_MICRO, TIME_SINCE_LAST_WAIT_MICRO, SERVICE_NAME, SQL_TRACE, SQL_TRACE_WAITS, SQL_TRACE_BINDS, SQL_TRACE_PLAN_STATS,
SESSION_EDITION_ID, CREATOR_ADDR, CREATOR_SERIAL#, ECID, SQL_TRANSLATION_PROFILE_ID, PGA_TUNABLE_MEM, CON_ID, EXTERNAL_NAME

DESC V$SQL;

SQL_TEXT, SQL_FULLTEXT, SQL_ID, SHARABLE_MEM, PERSISTENT_MEM, RUNTIME_MEM, SORTS, LOADED_VERSIONS, OPEN_VERSIONS, USERS_OPENING, FETCHES, EXECUTIONS,
PX_SERVERS_EXECUTIONS, END_OF_FETCH_COUNT, USERS_EXECUTING, LOADS, FIRST_LOAD_TIME, INVALIDATIONS, PARSE_CALLS, DISK_READS, DIRECT_WRITES, BUFFER_GETS,
APPLICATION_WAIT_TIME, CONCURRENCY_WAIT_TIME, CLUSTER_WAIT_TIME, USER_IO_WAIT_TIME, PLSQL_EXEC_TIME, JAVA_EXEC_TIME, ROWS_PROCESSED, COMMAND_TYPE,
OPTIMIZER_MODE, OPTIMIZER_COST, OPTIMIZER_ENV, OPTIMIZER_ENV_HASH_VALUE, PARSING_USER_ID, PARSING_SCHEMA_ID, PARSING_SCHEMA_NAME, KEPT_VERSIONS, ADDRESS,
TYPE_CHK_HEAP, HASH_VALUE, OLD_HASH_VALUE, PLAN_HASH_VALUE, FULL_PLAN_HASH_VALUE, CHILD_NUMBER, SERVICE, SERVICE_HASH, MODULE, MODULE_HASH, ACTION, ACTION_HASH,
SERIALIZABLE_ABORTS, OUTLINE_CATEGORY, CPU_TIME, ELAPSED_TIME, OUTLINE_SID, CHILD_ADDRESS, SQLTYPE, REMOTE, OBJECT_STATUS, LITERAL_HASH_VALUE, LAST_LOAD_TIME,
IS_OBSOLETE, IS_BIND_SENSITIVE, IS_BIND_AWARE, IS_SHAREABLE, CHILD_LATCH, SQL_PROFILE, SQL_PATCH, SQL_PLAN_BASELINE, PROGRAM_ID, PROGRAM_LINE#,
EXACT_MATCHING_SIGNATURE, FORCE_MATCHING_SIGNATURE, LAST_ACTIVE_TIME, BIND_DATA, TYPECHECK_MEM, IO_CELL_OFFLOAD_ELIGIBLE_BYTES, IO_INTERCONNECT_BYTES,
PHYSICAL_READ_REQUESTS, PHYSICAL_READ_BYTES, PHYSICAL_WRITE_REQUESTS, PHYSICAL_WRITE_BYTES, OPTIMIZED_PHY_READ_REQUESTS, LOCKED_TOTAL, PINNED_TOTAL,
IO_CELL_UNCOMPRESSED_BYTES, IO_CELL_OFFLOAD_RETURNED_BYTES, CON_ID, IS_REOPTIMIZABLE, IS_RESOLVED_ADAPTIVE_PLAN

SELECT
SN.SID||','||SN.SERIAL# SIDSERIAL, SQ.SQL_ID, SQ.SQL_TEXT, SN.USERNAME, SN.COMMAND, SN.SCHEMANAME, SN.OSUSER, SN.MACHINE
FROM V$SESSION SN
=======
DESC V$SESSION;

SADDR, SID, SERIAL#, AUDSID, PADDR, USER#, USERNAME, COMMAND, OWNERID, TADDR, LOCKWAIT, STATUS, SERVER, SCHEMA#, SCHEMANAME, OSUSER, PROCESS, MACHINE, PORT,
TERMINAL, PROGRAM, TYPE, SQL_ADDRESS, SQL_HASH_VALUE, SQL_ID, SQL_CHILD_NUMBER, SQL_EXEC_START, SQL_EXEC_ID, PREV_SQL_ADDR, PREV_HASH_VALUE, PREV_SQL_ID,
PREV_CHILD_NUMBER, PREV_EXEC_START, PREV_EXEC_ID, PLSQL_ENTRY_OBJECT_ID, PLSQL_ENTRY_SUBPROGRAM_ID, PLSQL_OBJECT_ID, PLSQL_SUBPROGRAM_ID, MODULE, MODULE_HASH,
ACTION, ACTION_HASH, CLIENT_INFO, FIXED_TABLE_SEQUENCE, ROW_WAIT_OBJ#, ROW_WAIT_FILE#, ROW_WAIT_BLOCK#, ROW_WAIT_ROW#, TOP_LEVEL_CALL#, LOGON_TIME,
LAST_CALL_ET, PDML_ENABLED, FAILOVER_TYPE, FAILOVER_METHOD, FAILED_OVER, RESOURCE_CONSUMER_GROUP, PDML_STATUS, PDDL_STATUS, PQ_STATUS, CURRENT_QUEUE_DURATION,
CLIENT_IDENTIFIER, BLOCKING_SESSION_STATUS, BLOCKING_INSTANCE, BLOCKING_SESSION, FINAL_BLOCKING_SESSION_STATUS, FINAL_BLOCKING_INSTANCE, FINAL_BLOCKING_SESSION,
SEQ#, EVENT#, EVENT, P1TEXT, P1, P1RAW, P2TEXT, P2, P2RAW, P3TEXT, P3, P3RAW, WAIT_CLASS_ID, WAIT_CLASS#, WAIT_CLASS, WAIT_TIME, SECONDS_IN_WAIT, STATE,
WAIT_TIME_MICRO, TIME_REMAINING_MICRO, TIME_SINCE_LAST_WAIT_MICRO, SERVICE_NAME, SQL_TRACE, SQL_TRACE_WAITS, SQL_TRACE_BINDS, SQL_TRACE_PLAN_STATS,
SESSION_EDITION_ID, CREATOR_ADDR, CREATOR_SERIAL#, ECID, SQL_TRANSLATION_PROFILE_ID, PGA_TUNABLE_MEM, CON_ID, EXTERNAL_NAME

DESC V$SQL;

SQL_TEXT, SQL_FULLTEXT, SQL_ID, SHARABLE_MEM, PERSISTENT_MEM, RUNTIME_MEM, SORTS, LOADED_VERSIONS, OPEN_VERSIONS, USERS_OPENING, FETCHES, EXECUTIONS,
PX_SERVERS_EXECUTIONS, END_OF_FETCH_COUNT, USERS_EXECUTING, LOADS, FIRST_LOAD_TIME, INVALIDATIONS, PARSE_CALLS, DISK_READS, DIRECT_WRITES, BUFFER_GETS,
APPLICATION_WAIT_TIME, CONCURRENCY_WAIT_TIME, CLUSTER_WAIT_TIME, USER_IO_WAIT_TIME, PLSQL_EXEC_TIME, JAVA_EXEC_TIME, ROWS_PROCESSED, COMMAND_TYPE,
OPTIMIZER_MODE, OPTIMIZER_COST, OPTIMIZER_ENV, OPTIMIZER_ENV_HASH_VALUE, PARSING_USER_ID, PARSING_SCHEMA_ID, PARSING_SCHEMA_NAME, KEPT_VERSIONS, ADDRESS,
TYPE_CHK_HEAP, HASH_VALUE, OLD_HASH_VALUE, PLAN_HASH_VALUE, FULL_PLAN_HASH_VALUE, CHILD_NUMBER, SERVICE, SERVICE_HASH, MODULE, MODULE_HASH, ACTION, ACTION_HASH,
SERIALIZABLE_ABORTS, OUTLINE_CATEGORY, CPU_TIME, ELAPSED_TIME, OUTLINE_SID, CHILD_ADDRESS, SQLTYPE, REMOTE, OBJECT_STATUS, LITERAL_HASH_VALUE, LAST_LOAD_TIME,
IS_OBSOLETE, IS_BIND_SENSITIVE, IS_BIND_AWARE, IS_SHAREABLE, CHILD_LATCH, SQL_PROFILE, SQL_PATCH, SQL_PLAN_BASELINE, PROGRAM_ID, PROGRAM_LINE#,
EXACT_MATCHING_SIGNATURE, FORCE_MATCHING_SIGNATURE, LAST_ACTIVE_TIME, BIND_DATA, TYPECHECK_MEM, IO_CELL_OFFLOAD_ELIGIBLE_BYTES, IO_INTERCONNECT_BYTES,
PHYSICAL_READ_REQUESTS, PHYSICAL_READ_BYTES, PHYSICAL_WRITE_REQUESTS, PHYSICAL_WRITE_BYTES, OPTIMIZED_PHY_READ_REQUESTS, LOCKED_TOTAL, PINNED_TOTAL,
IO_CELL_UNCOMPRESSED_BYTES, IO_CELL_OFFLOAD_RETURNED_BYTES, CON_ID, IS_REOPTIMIZABLE, IS_RESOLVED_ADAPTIVE_PLAN

SELECT
SN.SID||','||SN.SERIAL# SIDSERIAL, SQ.SQL_ID, SQ.SQL_TEXT, SN.USERNAME, SN.COMMAND, SN.SCHEMANAME, SN.OSUSER, SN.MACHINE
FROM V$SESSION SN
>>>>>>> 327b5e2c2d7f1e6078f5d0c4cff716a75d749ca2
JOIN V$SQL SQ ON SQ.SQL_ID=SN.SQL_ID;