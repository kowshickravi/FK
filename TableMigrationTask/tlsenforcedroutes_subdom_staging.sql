CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_subdom_staging"
(
  "tlsnforceroutesID"       INTEGER GENERATED ALWAYS AS IDENTITY      NOT NULL,
  "tlsnforcerID"            INTEGER                                   NOT NULL,
  "subdomID"                INTEGER                                   NULL,
  "IsStaging"               BOOLEAN                                   NOT NULL,
  "UseDeafult"              BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended" DEFAULT LOCALTIMESTAMP,                 
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended" DEFAULT LOCALTIMESTAMP,               
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended " DEFAULT CURRENT_USER,              
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"     DEFAULT FALSE,     
                            
      CONSTRAINT "PK_tlsnforceroutesID" PRIMARY KEY
(
	     "tlsnforceroutesID"
	)
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_tlsnforceroutesSettings"
ON dbo."tlsenforcedroutes_subdom_staging"
(
   "tlsnforcerID",
   "subdomID"     ASC NULLS FIRST
);