CREATE TABLE X2_ARCHIV
(
    JOB_OID          INT,
    TEMPLATE_ID      INT,
    TEMPLATE_EXE_ID  INT,
    HOST             VARCHAR(20),
    SOURCE           VARCHAR(255),
    EXEC_PATH        VARCHAR(100),
    COMMAND          VARCHAR(500),
    STATE            INT,
    PROCESS_START    DATETIME,
    PROCESS_STOP     DATETIME,
    PROCESS_DURATION INT,
    LOGDATA          LONGBLOB
);

CREATE INDEX IND_X2_ARCHIV_TID ON X2_ARCHIV (TEMPLATE_ID);
CREATE INDEX IND_X2_ARCHIV_JID ON X2_ARCHIV (JOB_OID, TEMPLATE_EXE_ID);