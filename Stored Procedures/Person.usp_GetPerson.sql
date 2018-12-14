SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [Person].[usp_GetPerson]
AS
    BEGIN
        SELECT
            FirstName,
            LastName
        FROM
            Person.Person;
    END;
GO
