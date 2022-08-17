CREATE TABLE X2_WORKLIST
(
    OID             INT                                              NOT NULL AUTO_INCREMENT,
    JOB_OID         INT                                              NOT NULL,
    TEMPLATE_ID     INT                                              NOT NULL,
    TEMPLATE_EXE_ID INT                                              NOT NULL,
    JOB_NAME        VARCHAR(100),
    JOB_TYPE        ENUM( 'COMMAND', 'START_TEMPLATE' )              NOT NULL,
    BREAKPOINT      INT,
    STATE           INT                                  DEFAULT 0   NOT NULL,
    PROCESS_START   DATETIME,
    PROCESS_STOP    DATETIME,
    CONSTRAINT PK_X2_WORKLIST PRIMARY KEY (OID),
    CONSTRAINT FK_X2_WORKLIST_TID FOREIGN KEY (TEMPLATE_ID) REFERENCES X2_TEMPLATE (OID)
);

CREATE INDEX IND_X2_WORKLIST_STATE ON X2_WORKLIST (STATE);
CREATE INDEX IND_X2_WORKLIST_TEMPLATE_EXE_ID ON X2_WORKLIST (TEMPLATE_EXE_ID);
