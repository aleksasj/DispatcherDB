CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Title] NVARCHAR(MAX) NOT NULL,
	[Latitude] FLOAT NOT NULL,
	[Longitude] FLOAT NOT NULL,
	CONSTRAINT UQ_cordinates UNIQUE ([Longitude], [Latitude])
)
