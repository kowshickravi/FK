CREATE TABLE IF NOT EXISTS  dbo."ReportTypeFormat"
(	
	"ReportTypeId"		        INTEGER				NOT NULL,
	"ReportFormatType"	        CHAR(2)			        NOT NULL,
	"AuditId"			UUID	                        NULL,
	"AuditActionType"               CHAR(2)			        NOT NULL,
	"AuditSequenceNo"	        INTEGER			        NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"			VARCHAR(256)		        NULL,
	"HostName"			VARCHAR(256)		        NULL,
	"ActionTime"		        TIMESTAMP			NULL,
	CONSTRAINT "PK_ReportTypeFormat" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX "IX_ReportTypeFormat_NC01" 
ON dbo."ReportTypeFormat"
  (
	   "AuditId"
  );

GRANT  INSERT  ON dbo."ReportTypeFormat"  TO PUBLIC;
