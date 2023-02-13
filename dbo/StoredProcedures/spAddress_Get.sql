CREATE PROCEDURE [dbo].[spAddress_Get]
	@Latitude FLOAT,
	@Longitude FLOAT
AS
BEGIN
	SELECT *
	FROM dbo.Address
	WHERE Latitude = @Latitude AND Longitude = @Longitude
END
