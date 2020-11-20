CREATE TABLE IF NOT EXISTS dbo."ReportGroup"
(	
	"ReportGroupId"			        INTEGER				NOT NULL,
	"ReportGroupName"	                VARCHAR (20)		        NOT NULL,
	"CustomerServiceTypeId"	                INTEGER				NOT NULL,
	"UIVisible"				CHAR(1)			        NOT NULL,
	"UIOrder"				INTEGER			        NOT NULL,
	"AuditId"				UUID	                        NULL,
	"AuditActionType"	                CHAR(2)			        NOT NULL,
	"AuditSequenceNo"	                INTEGER				NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"				VARCHAR(256)		        NULL,
	"HostName"				VARCHAR(256)		        NULL,
	"ActionTime"		                TIMESTAMP			NULL,
	CONSTRAINT "PK_ReportGroup" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE  UNIQUE INDEX IF NOT EXISTS "IX_ReportGroup_NC01" 
ON dbo."ReportGroup"
(
	"AuditId"
);

GRANT  INSERT  ON dbo."ReportGroup"  TO PUBLIC;

