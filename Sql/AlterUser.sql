SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Alter_User](@FirstName AS VARCHAR(35),@LastName AS VARCHAR(35),@Email AS VARCHAR(60),@userPassword AS VARCHAR(35),@userId AS INT)
AS
BEGIN
UPDATE dbo.users SET
    firstName = @FirstName,
    lastname = @LastName,
    Email = @Email,
    userPassword = @userPassword
WHERE
    userId = @userId
END

    
GO
