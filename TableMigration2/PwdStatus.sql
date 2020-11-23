CREATE TABLE IF NOT EXISTS dbo."PwdStatus"
(
        "OwnerId"                   INTEGER         NOT NULL,
	"OwnerTypeId"               SMALLINT        NOT NULL,
	"ForcePwdReset"             VARCHAR(255)    NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"WhoAmended_NT_Username"    VARCHAR(255)    NOT NULL,
	"WhoAmended_Hostname"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"                 VARCHAR(256)    NOT NULL,
	"Hostname"                  VARCHAR(256)    NOT NULL,
	"ActionTime"                TIMESTAMP       NULL,
	CONSTRAINT "PK_PwdStatus" PRIMARY KEY
	(
	    "AuditSequenceNo"
		
	)
	
);
CREATE INDEX IF NOT EXISTS  "INDEX IX_PwdStatus_NC01" 
ON dbo."PwdStatus"
(
      "AuditId"
);
GRANT INSERT ON dbo."PwdStatus" TO PUBLIC;
