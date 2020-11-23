CREATE TABLE  IF NOT EXISTS dbo."ServiceCFActionParamType"
(	
	"ParamType"			    VARCHAR(10)                 NOT NULL,
	"ParamCategory"		            VARCHAR(10)		        NOT NULL,
	"XMLSchemaElement"	            VARCHAR(255)	        NOT NULL,
	"[Description]"		            VARCHAR(255)		NULL,
	"AuditId"			    UID	                        NULL,
	"AuditActionType"		    CHAR(2)			NOT NULL,
	"AuditSequenceNo"		    INTEGER		        NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"			    VARCHAR(256)		NULL,
	"HostName"			    VARCHAR(256)		NULL,
	"ActionTime"			    TIMESTAMP			NULL,
	CONSTRAINT "PK_ServiceCFActionParamType" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionParamType_NC01" 
ON dbo."ServiceCFActionParamType"
   (
	   "AuditId" ASC NULLS FIRST
   );

GRANT  INSERT  ON dbo."ServiceCFActionParamType"  TO PUBLIC;
