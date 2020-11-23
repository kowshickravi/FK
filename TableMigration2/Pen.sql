CREATE TABLE IF NOT EXISTS dbo."Pen"
(
       "PenId"                   INTEGER       NOT NULL,
       "PenTypeID"               INTEGER       NOT NULL,
       "DisplayName"             VARCHAR(50)   NOT NULL,
       "PenHostName"             VARCHAR(255)  NOT NULL,
       "IPAddress"               VARCHAR(15)   NOT NULL,
       "[Description]"           VARCHAR(255)  NOT NULL,
       "DateCreated"             TIMESTAMP     NOT NULL,
       "DateAmended"             TIMESTAMP     NOT NULL,
       "WhoAmended_nt_username"  VARCHAR(255)  NOT NULL,
       "WhoAmended_hostname"     VARCHAR(255)  NOT NULL,
       "AuditId"                 UUID          NULL,
       "AuditActionType"         CHAR(2)       NOT NULL,
       "AuditSequenceNo"         INTEGER       NOT NULL GENERATED ALWAYS AS IDENTITY,
       "LoginName"               VARCHAR(256)  NULL,
       "HostName"                VARCHAR(256)  NULL,
       "ActionTime"              TIMESTAMP     NULL,
	
	    CONSTRAINT "PK_Pen" PRIMARY KEY
	    (
	       "AuditSequenceNo"
	    )
);
CREATE UNIQUE INDEX IF NOT EXISTS "INDEX IX_Pen_NC01" 
ON dbo."Pen"
        (
           "AuditId" ASC NULLS FIRST
        );

