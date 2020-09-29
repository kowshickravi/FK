CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUserHidden"
(
  "UserID"                  INTEGER   GENERATED ALWAYS AS IDENTITY    NOT NULL,
  "BatchID"                 INTEGER                                   NOT NULL,
  "StatusID"                INTEGER                                   NULL,
  "levelIncreases?"         BOOLEAN                                   NOT NULL,
  "UseDefault"              BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_UnidentifiedUserBatch"               DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
      CONSTRAINT "UnidentifiedUserHidden"  PRIMARY KEY
  (
  "UserID"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_BatchID"
ON dbo."UnidentifiedUserHidden"
(
   "BatchID",
   "StatusID"    ASC NULLS FIRST
);