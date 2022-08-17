CREATE TABLE X2_JOB_COMMAND
(
    OID        INT                       NOT NULL,
    HOST       VARCHAR(20)               NOT NULL,
    SOURCE     VARCHAR(255),
    EXEC_PATH  VARCHAR(100)  DEFAULT '/' NOT NULL,
    COMMAND    VARCHAR(500)              NOT NULL,
    INSTANCES  INT           DEFAULT 1   NOT NULL,
    RETRIES    INT           DEFAULT 0   NOT NULL,
    RETRY_TIME INT           DEFAULT 0   NOT NULL,
    CONSTRAINT PK_X2_JOB_COMMAND PRIMARY KEY (OID),
    CONSTRAINT FK_X2_JOB_COMMAND_OID FOREIGN KEY (OID) REFERENCES X2_JOBLIST (OID)
);
