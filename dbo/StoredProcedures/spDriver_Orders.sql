CREATE PROCEDURE [dbo].[spDriver_Orders]
	@DriverId INT,
	@Offset INT,
	@Limit INT
AS
BEGIN
	SELECT *, 
	d.Title AS DestinationTitle, d.Latitude as DestinationLatitude, d.Longitude as DestinationLongitude,
	p.Title AS PickupTitle, p.Latitude as PickupLatitude, p.Longitude as PickupLongitude 
	FROM dbo.[Order] AS o
	LEFT JOIN dbo.[Address] as p ON p.Id = o.PickupId
	LEFT JOIN dbo.[Address] as d on d.Id = d.Id
	WHERE DriverId = @DriverId
	ORDER BY CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
