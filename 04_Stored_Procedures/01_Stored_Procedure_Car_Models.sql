CREATE PROCEDURE sp_GetAllModels
    @Action INT
AS
BEGIN
    BEGIN TRY
        IF @Action = 0
        BEGIN
        SELECT *
        FROM Cars
        ORDER BY 
                CASE model
                    WHEN 'Model S' THEN 1
                    WHEN 'Model 3' THEN 2
                    WHEN 'Model X' THEN 3
                    WHEN 'Model Y' THEN 4
                    ELSE 5
                END
    END
        END TRY
            BEGIN CATCH
            SELECT ERROR_MESSAGE() AS ErrorMessage;
        END CATCH
END;