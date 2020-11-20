CREATE TABLE IF NOT EXISTS  dbo."ServiceCFActionParamCategory"
(	
	"ParamCategory"	VARCHAR(10)		    NOT NULL,
	"[Description]"	VARCHAR(255)		NULL,
	"AuditId"		UUID	            NULL,
	"AuditActionType" CHAR(2)			NOT NULL,
	"AuditSequenceNo" INTEGER		    NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		  VARCHAR(256)		NULL,
	"HostName"		  VARCHAR(256)		NULL,
	"ActionTime"	  TIMESTAMP	        NULL,
	CONSTRAINT "PK_ServiceCFActionParamCategory" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionParamCategory_NC01"
ON dbo."ServiceCFActionParamCategory"
    (
	    "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ServiceCFActionParamCategory"  TO PUBLIC;


