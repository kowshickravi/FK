CREATE TABLE IF NOT EXISTS dbo."ServiceCF"
(	
	"ServiceCFId"						INTEGER				NOT NULL,
	"CustomerId"						INTEGER				NOT NULL,
	"DomainId"						INTEGER			        NULL,
	"UseDefault"						CHAR(1)			        NOT NULL,
	"AdminEmailAddress"				        VARCHAR(255)	                NOT NULL,
	"PreventSubDomainInheritance"		                CHAR(1)			        NOT NULL,
	"DefaultTimeZoneId"				        INTEGER				NOT NULL,
	"DateCreated"						TIMESTAMP		        NOT NULL,
	"DateAmended"						TIMESTAMP		        NOT NULL,
	"DateDeleted"						TIMESTAMP		        NOT NULL,
	"WhoAmended_nt_username"			        VARCHAR(255)	                NOT NULL,
	"WhoAmended_hostname"				        VARCHAR(255)	                NOT NULL,
	"AuditId"					        UUID	                        NULL,
	"AuditActionType"					CHAR(2)			        NOT NULL,
	"AuditSequenceNo"					INTEGER				NOT NULL,
	"LoginName"						VARCHAR(256)		        NULL,
	"HostName"					        VARCHAR(256)		        NULL,
	"ActionTime"						TIMESTAMP			NULL,
	"InternalNotificationFromAddress"                       VARCHAR(255)		        NULL,
	"ExternalNotificationFromAddress"                       VARCHAR(255)		        NULL,
	"SubjectTagPosition"				        CHAR(1)				NULL,
	"SubjectTag"						VARCHAR(150)		        NULL,
	"SubjectTagCharSet"				        VARCHAR(15)			NULL,
	"CCPenNumber"						INTEGER				NULL,
	CONSTRAINT "PK_ServiceCF" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCF_NC01"
ON dbo."ServiceCF"
(
	"AuditId" ASC NULLS FIRST
);

GRANT  INSERT  ON dbo."ServiceCF"  TO PUBLIC;


