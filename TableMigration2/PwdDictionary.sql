CREATE TABLE IF NOT EXISTS dbo."PwdDictionary"
(
        "WordId"                    INTEGER         NOT NULL,
	"DictionaryWord"            VARCHAR(400)    NULL,
	"DictionarySource"          VARCHAR(255)    NOT NULL,
	"DateCreated"               TIMESTAMP       NOT NULL,
	"DateAmended"               TIMESTAMP       NOT NULL,
	"WhoAmended_Nt_Username"    VARCHAR(255)    NOT NULL,
	"WhoAmended_Hostname"       VARCHAR(255)    NOT NULL,
	"AuditId"                   UUID            NULL,
	"AuditActionType"           CHAR(2)         NOT NULL,
	"AuditSequenceNo"           INTEGER         NOT NULL  GENERATED ALWAYS AS IDENTITY,
	"LoginName"                 VARCHAR(255)    NULL,
	"HostName"                  VARCHAR(255)    NULL,
	"ActionTime"                TIMESTAMP       NULL,
	CONSTRAINT "PK_PwdDictionary " PRIMARY KEY
	(
	    "AuditSequenceNo"
	)
);	
CREATE UNIQUE INDEX IF NOT EXISTS "IX_PwdDictionary_NC01" 
ON dbo."PwdDictionary"
(
       "AuditId" ASC NULLS FIRST
)
	
	
	
	

