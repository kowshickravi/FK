CREATE TABLE IF NOT EXISTS dbo."ScalarParam"
	(
		"ScalarParamId"				            INTEGER				NOT NULL,
		"ScalarParamGroupId"			            INTEGER			        NOT NULL,
		"ScalarParamKeyId"			            SMALLINT			        NOT NULL,
		"ScalarValue"					    VARCHAR(1000)		        NULL,
		"DateCreated"					    TIMESTAMP			        NOT NULL,
		"DateAmended"					    TIMESTAMP			        NOT NULL,
		"WhoAmended_nt_username"		            VARCHAR(255)		        NOT NULL,
		"WhoAmended_hostname"			            VARCHAR(255)		        NOT NULL,
		"AuditId"				            UUID		                NULL,
		"AuditActionType"				    CHAR(2)				NOT NULL,
		"AuditSequenceNo"				    INTEGER			        NOT NULL GENERATED ALWAYS AS IDENTITY,
		"LoginName"					    VARCHAR(256)			NULL,
		"HostName"					    VARCHAR(256)			NULL,
		"ActionTime"					    TIMESTAMP				NULL,
		CONSTRAINT "PK_ScalarParam_CU0" PRIMARY KEY  
		(
		  "AuditSequenceNo"
		)	
	);	

GRANT INSERT ON dbo."ScalarParam" TO PUBLIC;
