CREATE PROCEDURE [dbo].[spLocation_Create]
	@DriverId INT,
	@Latitude FLOAT,
	@Longitude FLOAT
AS
BEGIN
	INSERT INTO dbo.[Location] (DriverId, Latitude, Longitude)
	VALUES (
		@DriverId,
		@Latitude,
		@Longitude
	)
END