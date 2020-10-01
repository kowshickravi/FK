CREATE OR REPLACE FUNCTION dbo."FN_insight_PwdPolicyControlHasParent"(
    IN  pi_OwnerId      INTEGER,
    IN  pi_OwnerTypeId  SMALLINT
)
    RETURNS BOOLEAN
    LANGUAGE plpgsql
AS
$BODY$
-- ========================================================================================================
-- Description : 
--             :
-- Author      : 
-- --------------------------------------------------------------------------------------------------------
-- [COPYIGHT NOTICE]
-- ------------------------------------------------------------------------------------------------------------
-- Copyright © 2020 Broadcom. All rights reserved.
-- The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
--
-- This software and all information contained therein is confidential and proprietary and shall not be
-- duplicated, used, disclosed or disseminated in any way except as authorized by the applicable license agreement,
-- without the express written permission of Broadcom. All authorized reproductions must be marked with this language.
--
-- EXCEPT AS SET FORTH IN THE APPLICABLE LICENSE AGREEMENT, TO THE EXTENT PERMITTED BY APPLICABLE LAW OR
-- AS AGREED BY BROADCOM IN ITS APPLICABLE LICENSE AGREEMENT, BROADCOM PROVIDES THIS DOCUMENTATION “AS IS”
-- WITHOUT WARRANTY OF ANY KIND, INCLUDING WITHOUT LIMITATION, ANY IMPLIED WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE, OR NONINFRINGEMENT. IN NO EVENT WILL BROADCOM BE LIABLE TO THE END USER OR
-- ANY THIRD PARTY FOR ANY LOSS OR DAMAGE, DIRECT OR INDIRECT, FROM THE USE OF THIS DOCUMENTATION,
-- INCLUDING WITHOUT LIMITATION, LOST PROFITS, LOST INVESTMENT, BUSINESS INTERRUPTION, GOODWILL, OR LOST DATA,
-- EVEN IF BROADCOM IS EXPRESSLY ADVISED IN ADVANCE OF THE POSSIBILITY OF SUCH LOSS OR DAMAGE
-- ========================================================================================================
DECLARE
    v_ParentExists  BOOLEAN;
BEGIN
    IF pi_OwnerTypeId = 3 AND EXISTS    THEN
        SELECT p1.OwnerId
        FROM dbo."AllDomains"           d
        JOIN dbo."PwdPolicyControl"     p1
        ON d.CustomerId = p1.OwnerId AND p1.OwnerTypeId = 2
        WHERE d.DomainId = pi_OwnerId;
        v_ParentExists = TRUE;
    ELSE
        v_ParentExists = FALSE;
    END IF;

    RETURN v_ParentExists;
END;
$BODY$;