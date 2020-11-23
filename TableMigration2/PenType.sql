CREATE TABLE IF NOT EXISTS dbo."PenType"
(
        "PenTypeId"                 INTEGER         NOT NULL,
	"PenType"                   VARCHAR(50)     NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"WhoAmended_nt_username"    VARCHAR(255)    NOT NULL,
	"WhoAmended_hostname"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"                 VARCHAR(256)    NULL,
	"HostName"                  VARCHAR(256)    NULL,
	"ActionTime"                TIMESTAMP       NULL,
	
	CONSTRAINT "PK_PenType" PRIMARY KEY 
	(
	     "AuditSequenceNo"
	)
);
CREATE UNIQUE INDEX IF NOT EXISTS "IX_PenType_NC01"
ON dbo."PenType"
(
         "AuditId" ASC NULLS FIRST
);

GRANT INSERT ON dbo."PenType" TO PUBLIC;
