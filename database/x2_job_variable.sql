CREATE TABLE X2_JOB_VARIABLE
(
    OID         INT          NOT NULL AUTO_INCREMENT,
    TEMPLATE_ID INT          NOT NULL,
    VAR_NAME    VARCHAR(50)  NOT NULL,
    VAR_VALUE   VARCHAR(255) NOT NULL,
    CONSTRAINT PK_X2_JOB_VARIABLE PRIMARY KEY (OID),
    CONSTRAINT FK_X2_JOB_VARIABLE_TID FOREIGN KEY (TEMPLATE_ID) REFERENCES X2_TEMPLATE (OID)
);

CREATE UNIQUE INDEX IND_JOB_X2_VARIABLE_TID_VNAME ON X2_JOB_VARIABLE (TEMPLATE_ID, VAR_NAME);
