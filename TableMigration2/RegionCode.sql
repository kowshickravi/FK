CREATE TABLE  IF NOT EXISTS dbo."RegionCode"
(
	"CountryCode"		CHAR(2)				NOT NULL,
	"RegionCode"		VARCHAR(30)			NOT NULL,
	"[Description]"	        VARCHAR(255)		        NOT NULL,
	"DateCreated"		TIMESTAMP			NOT NULL,
	"DateAmended"		TIMESTAMP			NOT NULL,
	"AuditId"	        UUID		                NULL,
	"AuditActionType"	CHAR(2)				NOT NULL,
	"AuditSequenceNo"       INTEGER 		        NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		VARCHAR(256)	                NULL,
	"HostName"	        VARCHAR(256) 		        NULL,
	"ActionTime"		TIMESTAMP		        NULL,
	CONSTRAINT "PK_RegionCode" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)	
);	

GRANT  INSERT  ON dbo."RegionCode"  TO PUBLIC;