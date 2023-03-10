CREATE PROCEDURE [dbo].[spAddress_Create]
	@Title NVARCHAR(MAX),
	@Latitude FLOAT,
	@Longitude FLOAT
AS
BEGIN
	INSERT INTO dbo.[Address] (Title, Latitude, Longitude)
	OUTPUT INSERTED.*
	VALUES (
		@Title,
		@Latitude,
		@Longitude
	)
END
