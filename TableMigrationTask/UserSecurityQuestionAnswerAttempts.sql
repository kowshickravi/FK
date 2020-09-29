CREATE TABLE IF NOT EXISTS dbo."UserSecurityQuestionAnswerAttempts"
(
  "UseId"                   INTEGER  GENERATED ALWAYS AS IDENTITY     NOT NULL,
  "SecId"                   INTEGER                                   NULL,
  "NoOfAtts"                INTEGER                                   NOT NULL,
  "IsDefault"               BOOLEAN                                   NOT NULL,
  "IsEnable"                BOOLEAN                                   NOT NULL,
  "AllowOfflineAccess"      BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_UserSecurityQuestionAnswerAttempts_DateCreated" DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"                  DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "                  DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"             DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"                      DEFAULT FALSE,         
      CONSTRAINT "PK_UserSecurityQuestionAnswerAttempts_UseId" PRIMARY KEY
  (
  "NoOfAtts"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_UserSecurityQuestionAnswerAttempts_NoOfAtts"
ON dbo."UserSecurityQuestionAnswerAttempts"
(
   "UseId",
   "SecId"     ASC NULLS FIRST
);