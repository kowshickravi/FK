CREATE TABLE IF NOT EXISTS dbo."ReportType"
(	
	"ReportTypeId"	            INTEGER				NOT NULL,
	"ReportGroupId"		    INTEGER			        NOT NULL,
	"ReportTypeName"	    VARCHAR(50)		                NOT NULL,
	"UIVisible"		    CHAR(1)			        NOT NULL,
	"UIOrder"		    INTEGER				NOT NULL,
	"AuditId"		    UUID	                        NULL,
	"AuditActionType"           CHAR(2)			        NOT NULL,
	"AuditSequenceNo"           INTEGER				NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		    VARCHAR(256)		        NULL,
	"HostName"		    VARCHAR(256)		        NULL,
	"ActionTime"		    TIMESTAMP			        NULL,
	CONSTRAINT PK_ReportType PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ReportType_NC01" 
ON dbo."ReportType"
   (
	"AuditId"
   );

GRANT  INSERT  ON dbo."ReportType"  TO PUBLIC;
