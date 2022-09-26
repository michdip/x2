ALTER TABLE X2_ACTIONLOG MODIFY OID INT UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE X2_WORKLIST MODIFY JOB_NAME VARCHAR(100) NOT NULL;
ALTER TABLE JOB_TYPE MODIFY VARCHAR(20) NOT NULL;
ALTER TABLE X2_WORK_COMMAND ADD INSTANCES INT NULL;
ALTER TABLE X2_DESCRIPTION MODIFY DESCRIPTION VARCHAR(8000);

CREATE TABLE DBVERSION
(
    DBVERSION INT         NOT NULL,
    CREATOR   VARCHAR(20) NOT NULL,
    CTS       TIMESTAMP,
    CONSTRAINT PK_DBVERSION PRIMARY KEY (DBVERSION)
);

INSERT INTO DBVERSION (DBVERSION, CREATOR) VALUES ( 1, 'mig_v1' );

CREATE TABLE X2_JOB_BILLIT_ADAPTER
(
    OID            INT                      NOT NULL,
    INSTANCE       VARCHAR(255)             NOT NULL,
    MODUL          VARCHAR(255)             NOT NULL,
    PRODUCER       INT                      NOT NULL,
    MIN_MESSAGES   INT            DEFAULT 0 NOT NULL,
    BMQ_CHECK_TIME INT            DEFAULT 1 NOT NULL,
    CONSTRAINT PK_X2_JOB_BILLIT_ADAPTER PRIMARY KEY (OID),
    CONSTRAINT FK_X2_JOB_BILLIT_ADAPTER_OID FOREIGN KEY (OID) REFERENCES X2_JOBLIST (OID),
    CONSTRAINT FK_X2_JOB_BILLIT_ADAPTER_PRD FOREIGN KEY (PRODUCER) REFERENCES X2_JOBLIST (OID)
);

INSERT INTO X2_ACTION (OID, DESCRIPTION) VALUES (31, 'Der Billit-Adapter wurde geändert (ID / Modul / Instanz / min Messages / Erzeuger )' );

CREATE TABLE X2_WORK_BILLIT_ADAPTER
(
    OID            INT                      NOT NULL,
    INSTANCE       VARCHAR(255)             NOT NULL,
    MODUL          VARCHAR(255)             NOT NULL,
    PRODUCER       INT                      NOT NULL,
    MIN_MESSAGES   INT            DEFAULT 0 NOT NULL,
    BMQ_CHECK_TIME INT            DEFAULT 1 NOT NULL,
    CONSTRAINT PK_X2_WORK_BILLIT_ADAPTER PRIMARY KEY (OID),
    CONSTRAINT FK_X2_WORK_BILLIT_ADAPTER_OID FOREIGN KEY (OID) REFERENCES X2_WORKLIST (OID),
    CONSTRAINT FK_X2_WORK_BILLIT_ADAPTER_PRD FOREIGN KEY (PRODUCER) REFERENCES X2_WORKLIST (OID)
);

INSERT INTO X2_JOB_STATE (JOB_STATE,
                          JOB_NAME,
                          JOB_ICON,
                          JOB_COLOR,
                          SET_OK_BY_USER,
                          SET_OK_BY_ADMIN,
                          IS_KILLABLE,
                          IS_RESTARTABLE,
                          IS_EDITABLE,
                          STATE_ORDER)
values ( 13, 'WAIT_4_BMQ_CHECK',  '&#xe031;', 'blue',      0, 0, 0, 0, 0, 3 ),
       ( 12, 'WAIT_4_PRODUCER',   '&#xe031;', 'blue',      0, 0, 0, 0, 0, 3 ),
       ( 14, 'WAIT_4_FINISH',     '&#xe031;', 'blue',      0, 0, 0, 0, 0, 3 );