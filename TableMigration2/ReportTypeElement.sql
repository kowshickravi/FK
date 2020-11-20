CREATE TABLE IF NOT EXISTS  dbo."ReportTypeElement"
(	
	"ReportTypeId"	           INTEGER			    NOT NULL,
	"ElementId"		   INTEGER			    NOT NULL,
	"ElementName"	           VARCHAR(50)		            NOT NULL,
	"Mandatory"		   CHAR(1)			    NOT NULL,
	"UIVisible"		   CHAR(1)			    NOT NULL,
	"UIOrder"		   INTEGER			    NOT NULL,
	"AuditId"		   UUID	                            NULL,
	"AuditActionType"          CHAR(2)			    NOT NULL,
	"AuditSequenceNo"          INTEGER			    NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		   VARCHAR(256)		           NULL,
	"HostName"		   VARCHAR(256)		           NULL,
	"ActionTime"	           TIMESTAMP			   NULL,
	CONSTRAINT "PK_ReportTypeElement" PRIMARY KEY  
   (
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ReportTypeElement_NC01" 
ON dbo."ReportTypeElement"
(
	    "AuditId"
);

GRANT  INSERT  ON dbo."ReportTypeElement"  TO PUBLIC;
