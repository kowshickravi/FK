CREATE TABLE IF NOT EXISTS dbo."TowerHouseKeepControl"
(
  "Towerid"                 INTEGER  GENERATED ALWAYS AS IDENTITY    NOT NULL,
  "Houseid"                 INTEGER                                  NOT NULL,
  "Controlid"               INTEGER                                  NULL,
  "levelIncreases?"         BOOLEAN                                  NOT NULL,
  "UseDefault"              BOOLEAN                                  NOT NULL,
  "Periodoftime"            SMALLINT                                 NOT NULL,
  "DateCreated"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_TowerHouseKeepControl"               DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
      CONSTRAINT "PK_TowerHouseKeepControl" PRIMARY KEY
  (
  "Towerid"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_Towerid"
ON dbo."TowerHouseKeepControl"
(
   "Houseid",
   "Controlid" ASC NULLS FIRST
);