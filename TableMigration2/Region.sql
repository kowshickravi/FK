CREATE TABLE IF NOT EXISTS dbo."Region"
(
        "RegionId"                  SMALLINT        NOT NULL,
	"RegionCode"                VARCHAR(10)     NOT NULL,
	"[Description]"             VARCHAR(255)    NULL,
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
	CONSTRAINT "PK_Region_CU01" PRIMARY KEY 
	( 
	    "AuditSequenceNo"
	)
); 
GRANT INSERT ON dbo."Region" TO PUBLIC;