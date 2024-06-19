CREATE TABLE Customers
(
    Guid UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    PasswordHash VARCHAR(256),
    City VARCHAR(255),
    Address VARCHAR(255),
    PostalCode VARCHAR(20),
    PhoneNumber VARCHAR(20),
    PreferredContactMethod VARCHAR(50),
    RegistrationDate DATETIME,
    isActive BIT
);
