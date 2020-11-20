CREATE TABLE  IF NOT EXISTS dbo."ServerType"
(	
	"ServerTypeId"	INTEGER				NOT NULL,
	"[Description]"	VARCHAR(255)	    NOT NULL,
	"AuditId"		UUID	            NULL,
	"AuditActionType" CHAR(2)			NOT NULL,
	"AuditSequenceNo" INTEGER			NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"		  VARCHAR(256)		NULL,
	"HostName"		  VARCHAR(256)		NULL,
	"ActionTime"	  TIMESTAMP			NULL,
	CONSTRAINT "PK_ServerType" PRIMARY KEY   
	(
	    "AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServerType_NC01" 
ON dbo."ServerType"
   (
	     "AuditId" ASC NULLS FIRST
   );

GRANT  INSERT  ON dbo."ServerType"  TO PUBLIC;
