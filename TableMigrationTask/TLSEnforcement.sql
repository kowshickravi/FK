CREATE TABLE IF NOT EXISTS dbo."TLSEnforcement"
(
  "TLSID"                   INTEGER  GENERATED ALWAYS AS IDENTITY    NOT NULL,
  "EnforcementID"           INTEGER                                  NOT NULL,
  "DomainID"                INTEGER                                  NULL,
  "IsWorking"               BOOLEAN                                  NOT NULL,
  "UseDeafult"              BOOLEAN                                  NOT NULL,
  "Periodoftime"            SMALLINT                                 NOT NULL,
  "DateCreated"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_TLSEnforcement"                     DEFAULT LOCALTIMESTAMP,                                                                  
  "DateAmended"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"      DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "      DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname" DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"          DEFAULT FALSE,                                                               
      CONSTRAINT "PK_TLSEnforcement" PRIMARY KEY
(
  "TLSID"
)
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_EnforcementID"
ON dbo."TLSEnforcement"
(
   "EnforcementID",
   "DomainID"     ASC NULLS FIRST
);