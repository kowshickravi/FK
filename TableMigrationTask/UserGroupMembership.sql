CREATE TABLE IF NOT EXISTS dbo."UserGroupMembership"
(
  "UseId"                   INTEGER  GENERATED ALWAYS AS IDENTITY     NOT NULL,
  "GroupId"                 INTEGER                                   NULL,
  "MemberId"                INTEGER                                   NOT NULL,
  "IsDefault"               BOOLEAN                                   NOT NULL,
  "IsEnable"                BOOLEAN                                   NOT NULL,
  "AllowOfflineAccess"      BOOLEAN                                   NOT NULL,
  "Periodoftime"            SMALLINT                                  NOT NULL,
  "DateCreated"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_UserGroupMembership_DateCreated"     DEFAULT LOCALTIMESTAMP,
  "DateAmended"             TIMESTAMP(3)                              NOT NULL CONSTRAINT "DF_tlsenforcedroutes_DateAmended"       DEFAULT LOCALTIMESTAMP,                                                                                                             
  "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_WhoAmended "       DEFAULT CURRENT_USER,                                                                 
  "WhoAmended_Hostname"     VARCHAR(255) COLLATE dbo.caseinsensitive  NOT NULL CONSTRAINT "DF_tlsenforcedroutes_Amended_Hostname"  DEFAULT "dbo.HostName"(),                                                                 
  "IsGroup"                 BOOLEAN                                   NOT NULL CONSTRAINT "DF_tlsenforcedroutes_IsGroup"           DEFAULT FALSE,         
      CONSTRAINT "PK_UserGroupMembership_MemberId" PRIMARY KEY
  (
   "MemberId"
  )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IN_UserGroupMembership_MemberId"
ON dbo."UserGroupMembership"
(
   "GroupId",
   "MemberId"     ASC NULLS FIRST
);