CREATE TABLE IF NOT EXISTS dbo."PublicBlacklist"
(
        "PublicBlacklistId"         INTEGER         NOT NULL,
	"Codeid"                    INTEGER         NOT NULL,
	"[Status]"                  CHAR(1)         NOT NULL,
	"RetiredDate"               TIMESTAMP       NULL,
	"ActiveList"                SMALLINT        NOT NULL,
	"HomePageURL"               VARCHAR(100)    NOT NULL,
	"SpamDNSUserName"           VARCHAR(64)     NULL,
	"SpamDNSLookupURL"          VARCHAR(256)    NOT NULL,
	"SpamDNSErrorText"          VARCHAR(512)    NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"DateDeleted"               TIMESTAMP       NOT NULL,
	"WhoAmended_NT_UserName"    VARCHAR(255)    NOT NULL,
	"WhoAmended_HostName"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"LoginName"                 VARCHAR(256)    NULL,
	"HostName"                  VARCHAR(256)    NULL,
	"ActionTime"                TIMESTAMP       NULL,
	CONSTRAINT "PK_PublicBlacklist" PRIMARY KEY
	(
	    "AuditSequenceNo"
	)
);	
CREATE UNIQUE INDEX IF NOT EXISTS "INDEX IX_PublicBlacklist_NC01"
ON dbo."PublicBlacklist"
(
    "AuditId" ASC NULLS FIRST
);
	
	
GRANT INSERT ON dbo."PublicBlacklist" TO PUBLIC;
