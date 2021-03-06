CREATE TABLE IF NOT EXISTS dbo."TLSEnforcementType"
(
  "TLSID"                   INTEGER  GENERATED ALWAYS AS IDENTITY    NOT NULL,
  "EnfID"                   INTEGER                                  NOT NULL,
  "TypeID"                  INTEGER                                  NULL,
  "IsWorking"               BOOLEAN                                  NOT NULL,
  "UseDeafult"              BOOLEAN                                  NOT NULL,
  "Periodoftime"            SMALLINT                                 NOT NULL,
  "DateCreated"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_TLSEnforcement"                     DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"      DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "      DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname" DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"          DEFAULT FALSE,                                                               
      CONSTRAINT "PK_TLSEnforcementType" PRIMARY KEY
  (
	"EnforceID"
  )	
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_EnfID"
ON dbo."TLSEnforcementType"
(
   "TLSID",
   "TypeID"     ASC NULLS FIRST
);