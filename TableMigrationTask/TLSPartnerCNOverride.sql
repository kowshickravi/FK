CREATE TABLE IF NOT EXISTS dbo."TLSPartnerCNOverride"
(
  "TLSID"                   INTEGER  GENERATED ALWAYS AS IDENTITY    NOT NULL,
  "PartnerCNID"             INTEGER                                  NOT NULL,
  "OverrideID"              INTEGER                                  NULL,
  "levelIncreases?"         BOOLEAN                                  NOT NULL,
  "UseDefault"              BOOLEAN                                  NOT NULL,
  "Periodoftime"            SMALLINT                                 NOT NULL,
  "DateCreated"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_TLSPartnerCNOverride"                DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
    CONSTRAINT "PK_TLSPartnerCNOverride" PRIMARY KEY 
  (
  "TLSID"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_PartnerCNID"
ON dbo."TLSPartnerCNOverride"
(
   "PartnerID",
   "OverrideID"     ASC NULLS FIRST
);