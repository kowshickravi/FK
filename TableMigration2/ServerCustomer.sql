CREATE TABLE IF NOT EXISTS dbo."ServerCustomer"
(	
	"ServerId"		INTEGER		        NOT NULL,
	"CustomerId"	        INTEGER			NOT NULL,
	"RankOrder"		INTEGER			NOT NULL,
	"AuditId"		UUID	                NULL,
	"AuditActionType"       CHAR(2)			NOT NULL,
	"AuditSequenceNo"       INTEGER			NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		VARCHAR(256)		NULL,
	"HostName"		VARCHAR(256)		NULL,
	"ActionTime"	        TIMESTAMP	        NULL,
	CONSTRAINT "PK_ServerCustomer" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServerCustomer_NC01" 
ON dbo."ServerCustomer"
(
	"AuditId" ASC NULLS FIRST
);

GRANT  INSERT  ON dbo."ServerCustomer"  TO PUBLIC;
