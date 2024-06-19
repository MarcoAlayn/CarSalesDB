CREATE PROCEDURE sp_Customers
    @Action INT,
    @CustomerEmail VARCHAR(255) = NULL
AS
BEGIN
    BEGIN TRY
    IF @Action = 0
    BEGIN
        SELECT *
        FROM Customers
    END
    ELSE IF @Action = 1 AND @CustomerEmail IS NOT NULL
    BEGIN
        SELECT FirstName, LastName, Email
        FROM Customers
        WHERE Email = @CustomerEmail
    END
    END TRY
        BEGIN CATCH
        SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
END;