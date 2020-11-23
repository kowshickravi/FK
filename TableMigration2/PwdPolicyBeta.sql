CREATE TABLE IF NOT EXISTS dbo."PwdPolicyData"
(
        "OwnerId"            INTEGER         NOT NULL,
	"OwnerTypeId"        INTEGER         NOT NULL,
	"AuditId"            UUID            NULL,
	"AuditActionType"    CHAR(2)         NOT NULL,
	"AuditSequenceNo"    INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"          VARCHAR(256)    NULL,
	"HostName"           VARCHAR(256)    NULL,
	"ActionTime"         TIMESTAMP       NULL,
	CONSTRAINT "PK_PwdPolicyBeta"    PRIMARY KEY
	(
	    "AuditSequenceNo"
	)
);

CREATE UNIQUE INDEX IF  NOT EXISTS "INDEX IX_PwdPolicyBeta_NC01"
ON dbo."PwdPolicyBeta"
(
    "AuditId" ASC NULLS FIRST
);
GRANT INSERT  ON dbo."PwdPolicyBeta" TO PUBLIC; 
