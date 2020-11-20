CREATE TABLE IF NOT EXISTS  dbo."ServiceCFActionType"
(	
	"ActionType"			VARCHAR(10)		   NOT NULL,
	"XMLSchemaElement"	    VARCHAR(255)	    NOT NULL,
	"[Description]"		    varchar(255)		NULL,
	"AuditId"				UUID	            NULL,
	"AuditActionType"		CHAR(2)			    NOT NULL,
	"AuditSequenceNo"		INTEGER			    NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"			    VARCHAR(256)		NULL,
	"HostName"			    VARCHAR(256)		NULL,
	"ActionTime"			TIMESTAMP			NULL,
	"ActionValue"			INTEGER		        NULL,
	"ActionCategory"		VARCHAR(50)		    NULL,
	CONSTRAINT "PK_ServiceCFActionType" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionType_NC01" 
ON dbo."ServiceCFActionType"
   
    (
	    "AuditId" ASC NULLS FIRST
	);

GRANT  INSERT  ON dbo."ServiceCFActionType"  TO PUBLIC;


