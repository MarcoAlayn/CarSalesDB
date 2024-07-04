CREATE PROCEDURE sp_GetAllModels
    @Action INT
AS
BEGIN
    BEGIN TRY
        IF @Action = 0
        BEGIN
        SELECT *
        FROM Cars
    END
        END TRY
            BEGIN CATCH
            SELECT ERROR_MESSAGE() AS ErrorMessage;
        END CATCH
END;