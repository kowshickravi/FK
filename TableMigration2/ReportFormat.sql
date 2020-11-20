CREATE TABLE IF NOT EXISTS dbo."ReportFormat"
(	
	"FormatType"			    CHAR(2)		    NOT NULL,
	"FormatDescription"	            VARCHAR(20)		    NOT NULL,
	"AuditId"			    UUID	            NULL,
	"AuditActionType"		    CHAR(2)		    NOT NULL,
	"AuditSequenceNo"		    INTEGER		    NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"			    VARCHAR(256)            NULL,
	"HostName"			    VARCHAR(256)	    NULL,
	"ActionTime"			    TIMESTAMP		    NULL,
	CONSTRAINT "PK_ReportFormat" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE  UNIQUE INDEX IF NOT EXISTS  "IX_ReportFormat_NC01" ON dbo."ReportFormat"
(
        "AuditId"
);

GRANT  INSERT  ON dbo."ReportFormat"  TO PUBLIC;
