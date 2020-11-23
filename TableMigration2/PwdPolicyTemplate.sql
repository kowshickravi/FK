CREATE TABLE IF NOT EXISTS dbo."PwdPolicyTemplate"
(
        "PwdPolicyLevel"                  CHAR(1)     NOT NULL,
	"ChangePwdOnFiestLogin"           CHAR(1)     NOT NULL,
	"MinPwdLength"                    SMALLINT    NOT NULL,
	"AllowAlpha"                      CHAR(1)     NOT NULL,
	"AllowNumeric"                    CHAR(1)     NOT NULL,
	"AllowSymbol"                     CHAR(1)     NOT NULL,
	"MaxRepeatedChars"                SMALLINT    NOT NULL,
	"AllowDictionaryWords"            CHAR(1)     NOT NULL,
	"AllowPartialEmail"               CHAR(1)     NOT NULL,
	"ResetsBeforeReUse"               SMALLINT    NOT NULL,
	"MaxChangesInPeriod"              SMALLINT    NOT NULL,
	"ChangeCountPeriodHours"          SMALLINT    NOT NULL,
	"AdminLockoutCountPeriodHours"    SMALLINT    NOT NULL,
	"UserLockoutCounterPeriodHours"   SMALLINT    NOT NULL,
	"PwdExpiryTime"                   SMALLINT    NOT NULL,
	"PwdChangeNotificationPeriodDays" SMALLINT    NOT NULL,
	"TriesBeforeAdminLockout"         SMALLINT    NOT NULL,
	"UserLockoutPeriodMins"           INTEGER     NOT NULL,
	"DateCreated"                     TIMESTAMP   NOT NULL,
	"DateAmended"                     TIMESTAMP   NOT NULL,
	"WhoAmended_NT_Username"          VARCHAR(255) NOT NULL,
	"WhoAmended_Hostname"             VARCHAR(255) NOT NULL,
	"AuditId"                         UUID         NULL,
	"AuditActionType"                 CHAR(2)      NOT NULL,
	"AuditSequenceNo"                 INTEGER      NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LoginName"                       VARCHAR(256) NULL,
	"HostName"                        VARCHAR(256) NULL,
	"ActionTime"                      TIMESTAMP    NULL,
	CONSTRAINT "PK_PwdPolicyTemplate"  PRIMARY KEY
	(
	    "AuditSequenceNo"
	)
  );
  CREATE INDEX IF NOT EXISTS "IX_PwdPolicyTemplate_NC01"
  ON dbo."PwdPolicyTemplate"
  (
      "AuditId"
  );
  GRANT INSERT  ON dbo."PwdPolicyTemplate"  TO PUBLIC;
