CREATE TABLE IF NOT EXISTS QueueDataSource
(
       "QueueDataSourceId"		            INTEGER				         NOT NULL,
	"Description"				    VARCHAR(255)		                 NOT NULL,
	"DateCreated"				    TIMESTAMP			                 NOT NULL,
	"DateAmended"				    TIMESTAMP			                 NOT NULL,
	"WhoAmended_NT_UserName"	            VARCHAR(255)		                 NOT NULL,
	"WhoAmended_HostName"		            VARCHAR(255)		                 NOT NULL,
	"AuditId"			            UUID	                                 NULL,
	"AuditActionType"			    CHAR(2)			                 NOT NULL,
	"AuditSequenceNo"			    INTEGER	GENERATED ALWAYS AS IDENTITY     NOT NULL,
	"LoginName"				    VARCHAR(256)		                 NULL,
	"HostName"				    VARCHAR(256)		                 NULL,
	"ActionTime"				    TIMESTAMP			                 NULL,
	CONSTRAINT "PK_QueueDataSource" PRIMARY KEY 
	(
	    "AuditSequenceNo"
	)
);
