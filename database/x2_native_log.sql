CREATE TABLE X2_NATIVE_LOG
(
    REMOTE_HOST VARCHAR(20)            NOT NULL,
    FILENAME    VARCHAR(255)           NOT NULL,
    COMPRESSED  INT          DEFAULT 0 NOT NULL,
    LOGDATE     DATE,
    CONSTRAINT PK_X2_NATIVE_LOG PRIMARY KEY (REMOTE_HOST, FILENAME)
);