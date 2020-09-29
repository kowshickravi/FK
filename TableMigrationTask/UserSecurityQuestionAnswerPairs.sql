CREATE TABLE IF NOT EXISTS dbo."UserSecurityQuestionAnswerPairs"
(
  "UseId"                   INTEGER  GENERATED ALWAYS AS IDENTITY     NOT NULL,
  "SecId"                   INTEGER                                   NULL,
  "NoOfAns"                 INTEGER                                   NOT NULL,
  "IsDefault"               BOOLEAN                                   NOT NULL,
  "IsEnable"                BOOLEAN                                   NOT NULL,
  "AllowOfflineAccess"      BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_UserSecurityQuestionAnswerPairs_DateCreated" DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"               DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "               DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"          DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"                   DEFAULT FALSE,         
      CONSTRAINT "PK_UserSecurityQuestionAnswerPairs_UseId" PRIMARY KEY
  (
  "NoOfAns"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_UserSecurityQuestionAnswerPairs_NoOfAns"
ON dbo."UserSecurityQuestionAnswerPairs"
(
   "UseId",
   "SecId"     ASC NULLS FIRST
);