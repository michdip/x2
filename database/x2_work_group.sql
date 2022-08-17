CREATE TABLE X2_WORK_GROUP
(
    TEMPLATE_EXE_ID   INT NOT NULL,
    GROUP_OID         INT NOT NULL,
    MEMBER_OID        INT NOT NULL,
    CONSTRAINT FK_X2_WORK_GROUP_MID FOREIGN KEY (MEMBER_OID) REFERENCES X2_WORKLIST (OID)
);

CREATE INDEX IND_X2_WORK_GROUP_EXE ON X2_WORK_GROUP (TEMPLATE_EXE_ID);