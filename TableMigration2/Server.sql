CREATE TABLE IF NOT EXISTS dbo."[Server]"
(	
	"ServerId"	    INTEGER			NOT NULL,
	"ServerName"	    VARCHAR(255)	        NOT NULL,
	"DatabaseName"	    VARCHAR(255)	        NOT NULL,
	"UserName"          VARCHAR(255)	        NOT NULL,
	"[Password]"	    VARCHAR(255)	        NOT NULL,
	"LoginTimeout"	    INTEGER			NOT NULL,
	"[OnLine]"	    CHAR(1)			NOT NULL,
	"ServerTypeId"	    INTEGER			NOT NULL,
	"AuditId"	    UUID	                NULL,
	"AuditActionType"   CHAR(2)			NOT NULL,
	"AuditSequenceNo"   INTEGER			NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"	    VARCHAR(256)	        NULL,
	"HostName"	    VARCHAR(256)                NULL,
	"ActionTime"	    TIMESTAMP	                NULL,
	CONSTRAINT "PK_Server" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_Server_NC01" ON dbo."[Server]"
    (
	    "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."[Server]"  TO PUBLIC;
