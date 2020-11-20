CREATE TABLE dbo."ResellerRoleServiceCustomer"
(	
	"ResellerRoleServiceCustomerId"	                        INTEGER		        NOT NULL,
	"ResellerId"						INTEGER			NOT NULL,
	"RoleId"						INTEGER		        NOT NULL,
	"CustomerServiceTypeId"			                INTEGER		        NULL,
	"CustomerInclusionState"			        SMALLINT	        NOT NULL,
	"CustomerId"						INTEGER		        NULL,
	"AuditId"					        UUID	                NULL,
	"AuditActionType"					CHAR(2)			NOT NULL,
	"AuditSequenceNo"					INTEGER			NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"						VARCHAR(256)		NULL,
	"HostName"						VARCHAR(256)		NULL,
	"ActionTime"						TIMESTAMP		NULL,
	CONSTRAINT "PK_ResellerRoleServiceCustomer" PRIMARY KEY 
	(
		"AuditSequenceNo" 
	)
);


CREATE UNIQUE INDEX IF NOT EXISTS "IX_ResellerRoleServiceCustomer_NC01" 
ON dbo."ResellerRoleServiceCustomer" 
(
	"AuditId"
);

GRANT  INSERT  ON dbo."ResellerRoleServiceCustomer"  TO PUBLIC;
