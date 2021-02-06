SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Validate_User](@Email AS VARCHAR(60), @userPassword AS VARCHAR(35))
 AS
 BEGIN
 SELECT Email, userPassword FROM users WHERE Email=@Email AND userPassword=@userPassword
 END

 
GO
