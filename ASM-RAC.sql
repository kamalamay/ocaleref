<<<<<<< HEAD
SELECT NAME,TOTAL_MB,FREE_MB,USABLE_FILE_MB,STATE FROM V$ASM_DISKGROUP;
SELECT NAME,MOUNT_STATUS,TOTAL_MB,FREE_MB,PATH FROM V$ASM_DISK ORDER BY 1;
SELECT NAME,HEADER_STATUS FROM V$ASM_DISK WHERE HEADER_STATUS<>'MEMBER';

ocrcheck
crsctl query css votedisk
ocrconfig -showbackup
=======
SELECT NAME,TOTAL_MB,FREE_MB,USABLE_FILE_MB,STATE FROM V$ASM_DISKGROUP;
SELECT NAME,MOUNT_STATUS,TOTAL_MB,FREE_MB,PATH FROM V$ASM_DISK ORDER BY 1;
SELECT NAME,HEADER_STATUS FROM V$ASM_DISK WHERE HEADER_STATUS<>'MEMBER';

ocrcheck
crsctl query css votedisk
ocrconfig -showbackup
>>>>>>> 327b5e2c2d7f1e6078f5d0c4cff716a75d749ca2
