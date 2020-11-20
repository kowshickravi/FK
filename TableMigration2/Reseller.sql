CREATE TABLE IF NOT EXISTS dbo."Reseller"
(	
	"CustomerId"					    INTEGER				NOT NULL,
	"BannerOnOutbound"			            CHAR(1)			        NOT NULL,
	"OutBoundBanner"				    VARCHAR(50)		                NOT NULL,
	"OutBoundBannerText"			            VARCHAR(1500)	                NOT NULL,
	"OutboundOopsEmailAddress"	                    VARCHAR(255)	                NOT NULL,
	"BannerOnInbound"				    CHAR(1)			        NOT NULL,
	"InBoundBanner"				            VARCHAR(50)		                NOT NULL,
	"InBoundBannerText"			            VARCHAR(1500)	                NOT NULL,
	"isTrial"					    CHAR(1)			        NOT NULL,
	"CheckUs_Email"				            TEXT		                NULL,
	"DateCreated"					    TIMESTAMP		                NOT NULL,
	"DateAmended"					    TIMESTAMP		                NOT NULL,
	"DateDeleted"					    TIMESTAMP			        NULL,
	"WhoAmended_nt_username"		            VARCHAR(255)	                NOT NULL,
	"WhoAmended_hostname"			            VARCHAR(255)	                NOT NULL,
	"AuditId"					    UUID	                        NULL,
	"AuditActionType"				    CHAR(2)			        NOT NULL,
	"AuditSequenceNo"				    INTEGER				NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"					    VARCHAR(256)		        NULL,
	"HostName"					    VARCHAR(256)		        NULL,
	"ActionTime"					    TIMESTAMP			        NULL,
	CONSTRAINT "PK_Reseller" PRIMARY KEY  
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX "IX_Reseller_NC01"
ON dbo."Reseller"
(
	"AuditId"
);
GRANT  INSERT  ON dbo."Reseller"  TO PUBLIC;
