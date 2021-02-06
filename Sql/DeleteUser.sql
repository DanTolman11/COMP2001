SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_User](@FirstName AS VARCHAR(35),@LastName AS VARCHAR(35),@Email AS VARCHAR(60),@userPassword AS VARCHAR(35),@userId AS INT)
AS
BEGIN
    DELETE dbo.users
    WHERE userId = @userId
END
GO
