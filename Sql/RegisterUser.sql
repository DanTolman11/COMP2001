SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Register_User](@firstName AS VARCHAR, @lastName AS VARCHAR, @email AS VARCHAR, @password AS VARCHAR) AS
BEGIN
    BEGIN TRANSACTION

        BEGIN TRY
        DECLARE @Error NVARCHAR(Max);
        DECLARE @userId INT;
        SELECT @userId = MAX(@userId) FROM users;

        SET @userId = @userId+1;

        SET @Error = 'Max selected =' + CAST(@userId as NVARCHAR);

        INSERT INTO users (firstName, lastName, Email, userPassword, userId)
        VALUES(@firstName, @lastName, @email, @password, @userId);
        IF @@TRANCOUNT > 0 COMMIT;
    END TRY
    BEGIN CATCH
        SET @Error = @Error+':An error was encountered';
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        RAISERROR(@Error, 1, 0);
    END CATCH;
END;
GO
