CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[DriverId] INT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[Phone] NVARCHAR(50) NOT NULL,
	PickupId INT NOT NULL,
	DestinationId INT NOT NULL,
	[Comment] TEXT NULL, 
    [Status] NUMERIC(2) NULL DEFAULT 0, 
    [UpdatedAt] DATETIME NULL, 
    [CreatedAt] DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (DriverId) REFERENCES [User](Id),
	FOREIGN KEY (PickupId) REFERENCES [Address](Id),
	FOREIGN KEY (DestinationId) REFERENCES [Address](Id),
)

GO
