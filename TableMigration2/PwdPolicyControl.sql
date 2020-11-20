CREATE TABLE IF NOT EXISTS dbo."PwdPolicyControl"
(
    "OwnerId"                   INTEGER         NOT NULL,
	"OwnerTypeId"               SMALLINT        NOT NULL,
	"UseDefault"                CHAR(1)         NOT NULL,
	"PwdPolicyLevel"            CHAR(1)         NOT NULL,
	"PwdPolicyId"               UUID            NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"WhoAmended_NT_UserName"    VARCHAR(255)    NOT NULL,
	"WhoAmended_Hostname"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"                 VARCHAR(256)    NULL,
	"HostName"                  VARCHAR(256)    NULL,
	"ActionTime"                TIMESTAMP       NULL,
	CONSTRAINT "PK_PwdPolicyControl" PRIMARY KEY  
	(
	    "AuditSequenceNo"
	)
);
CREATE UNIQUE INDEX IF NOT EXISTS "INDEX IX_PwdPolicyControl_NC01"
ON dbo."PwdPolicyControl"
	(
	    "AuditId" ASC NULLS FIRST
	);
GRANT  INSERT  ON dbo."PwdPolicyControl" TO  PUBLIC;  