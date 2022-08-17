CREATE TABLE X2_DEAMON
(
    OID            INT UNSIGNED                             NOT NULL AUTO_INCREMENT,
    WORKLIST_OID   INT                                      NOT NULL,
    DEAMON_MODE    INT                                      NOT NULL,
    DEAMON_TIME    DATETIME       DEFAULT CURRENT_TIMESTAMP NOT NULL,
    DEAMON_MESSAGE VARCHAR(4000),
    CONSTRAINT PK_X2_DEAMON_PK PRIMARY KEY (OID)
);

CREATE INDEX IND_X2_DEAMON_DM ON X2_DEAMON (DEAMON_MODE);
