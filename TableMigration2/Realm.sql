CREATE TABLE IF NOT EXISTS dbo."Realm"
(
        "CustomerId"                INTEGER         NOT NULL,
	"RealmName"                 VARCHAR(255)    NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"WhoAmended_NT_username"    VARCHAR(255)    NOT NULL,
	"WhoAmended_hostname"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"                 VARCHAR(256)    NULL,
	"HostName"                  VARCHAR(256)    NULL,
	"ActionTime"                TIMESTAMP       NULL,
	CONSTRAINT "PK_Realm" PRIMARY KEY
	(
	    "AuditSequenceNo"
	)
);
CREATE INDEX IF NOT EXISTS "INDEX IX_Realm_NC01"
ON dbo."Realm"
(
      "AuditId"
);
GRANT INSERT ON dbo."Realm" TO PUBLIC;
