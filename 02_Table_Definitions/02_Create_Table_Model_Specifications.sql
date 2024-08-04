CREATE TABLE ModelSpecifications
(
    Guid UNIQUEIDENTIFIER PRIMARY KEY,
    Model VARCHAR(50) UNIQUE,
    Autonomy_km NVARCHAR(100),
    QuarterMile NVARCHAR(100),
    MaximumPower_hp NVARCHAR(50),
    Acceleration_0_100_kmh NVARCHAR(100),
    Rims NVARCHAR(50),
    LoadCapacity_l NVARCHAR(50),
    Weight_kg NVARCHAR(50),
    MaximumSpeed_kmh NVARCHAR(150),
    DragCoefficient NVARCHAR(50),
    PropulsionSystem NVARCHAR(50),
    MaxSupercharger_kW INT,
    Warranty NVARCHAR(255)
);