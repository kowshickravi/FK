CREATE TABLE IF NOT EXISTS dbo."UpdateBannersFromDisclaimersControl"
(
  "BanId"                  INTEGER  GENERATED ALWAYS AS IDENTITY     NOT NULL,
  "DisclaimId"              INTEGER                                   NULL,
  "ControlId"               INTEGER                                   NOT NULL,
  "IsDefault"               BOOLEAN                                   NOT NULL,
  "IsEnable"                BOOLEAN                                   NOT NULL,
  "AllowOfflineAccess"      BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateCreated"       DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
      CONSTRAINT "PK_tbl.UpdateBannersFromDisclaimersControl" PRIMARY KEY
  (
  "DisclaimId"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_ControlId"
ON dbo."UpdateBannersFromDisclaimersControl"
(
   "ControlId",
   "DisclaimId"     ASC NULLS FIRST
);