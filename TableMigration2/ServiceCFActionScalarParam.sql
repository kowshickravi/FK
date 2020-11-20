CREATE TABLE IF NOT EXISTS dbo."ServiceCFActionScalarParam"
(	
	"ScalarParamId"			    INTEGER				NOT NULL,
	"ActionId"				    INTEGER				NOT NULL,
	"ScalarValue"				VARCHAR(255)		NULL,
	"ParamType"				    VARCHAR(10)		    NOT NULL,
	"DateCreated"				TIMESTAMP		    NOT NULL,
	"DateAmended"				TIMESTAMP		    NOT NULL,
	"DateDeleted"				TIMESTAMP		    NOT NULL,
	"WhoAmended_nt_username"	VARCHAR(255)	    NOT NULL,
	"WhoAmended_hostname"		VARCHAR(255)	    NOT NULL,
	"AuditId"					UUID	            NULL,
	"AuditActionType"			CHAR(2)			    NOT NULL,
	"AuditSequenceNo"			INTEGER				NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"				    VARCHAR(256)		NULL,
	"HostName"				    VARCHAR(256)		NULL,
	"ActionTime"				TIMESTAMP			NULL,
	"ScalarValueBinary"		    BYTEA			NULL,
	CONSTRAINT "PK_ServiceCFActionScalarParam" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);
CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionScalarParam_NC01" 
ON dbo."ServiceCFActionScalarParam"
   (
	    "AuditId" ASC NULLS FIRST
   );


GRANT  INSERT  ON dbo."ServiceCFActionScalarParam"  TO PUBLIC;
