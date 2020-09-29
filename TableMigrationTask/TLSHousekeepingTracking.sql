CREATE TABLE IF NOT EXISTS dbo."TLSHousekeepingTracking"
(
      "TLSID"                   INTEGER  GENERATED ALWAYS AS IDENTITY    NOT NULL,
	  "HouseID"                 INTEGER                                  NOT NULL,
	  "TrackingID"              INTEGER                                  NULL,
	  "CanuAbletotrack"         BOOLEAN                                  NOT NULL,
	  "UseDeafult"              BOOLEAN                                  NOT NULL,
	  "Periodoftime"            SMALLINT                                 NOT NULL,
	  "DateCreated"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_TLSHousekeeping"                    DEFAULT LOCALTIMESTAMP,
	  "DateAmended"             TIMESTAMP(3)                             NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"      DEFAULT LOCALTIMESTAMP,                                                                                                             
      "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "      DEFAULT CURRENT_USER,                                                                 
      "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname" DEFAULT "dbo.HostName"(),                                                                 
      "IsGroup"                 BOOLEAN                                  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"          DEFAULT FALSE,                                                               
      CONSTRAINT "PK_TLSHousekeepingTracking" PRIMARY KEY
	(
	     "TLSID"
	)
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_TrackingID"
ON dbo."TLSHousekeepingTracking"
(
   "HouseID",
   "TrackingID"     ASC NULLS FIRST
);