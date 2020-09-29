CREATE TABLE IF NOT EXISTS dbo."VirusPen"
(
  "UseId"                   INTEGER  GENERATED ALWAYS AS IDENTITY     NOT NULL,
  "PenId"                   INTEGER                                   NULL,
  "NoOfPens"                INTEGER                                   NOT NULL,
  "IsDefault"               BOOLEAN                                   NOT NULL,
  "IsEnable"                BOOLEAN                                   NOT NULL,
  "AllowOfflineAccess"      BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_VirusPen"                            DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
      CONSTRAINT "PK_VirusPen_UseId" PRIMARY KEY
  (
   "PenId"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_VirusPenIs"
ON dbo."VirusPen"
(
   "UseId",
   "NoOfPens"    ASC  NULLS FIRST
);