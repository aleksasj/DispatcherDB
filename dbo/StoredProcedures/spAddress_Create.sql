CREATE PROCEDURE [dbo].[spAddress_Create]
	@Title NVARCHAR(MAX),
	@Latitude FLOAT,
	@Longitude FLOAT
AS
BEGIN
	INSERT INTO dbo.[Address] (Title, Latitude, Longitude)
	VALUES (
		@Title,
		@Latitude,
		@Longitude
	)
	SET @id=SCOPE_IDENTITY()
    RETURN  @id
END