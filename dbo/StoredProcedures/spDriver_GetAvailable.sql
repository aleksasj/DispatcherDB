CREATE PROCEDURE [dbo].[spDriver_GetAvailable]
	@Latitude float,
	@Longitude float,
	@MaxAllowedOrdersCount INT,
	@MaxAllowedOrdersDistance INT

AS
BEGIN
	SELECT *, dbo.fnCalcDistanceKM(@Latitude, @Longitude, l.Latitude, l.Longitude) AS DISTANCE_FROM
	FROM dbo.[User] AS u 
		LEFT JOIN dbo.[WorkLog] AS wl ON wl.UserId = u.Id
		LEFT JOIN dbo.[Location] as l on l.DriverId = u.Id
 	WHERE 
		(SELECT COUNT(*) FROM dbo.[Order] AS o WHERE o.DriverId = u.Id AND o.[Status] IN (1,2)) <= @MaxAllowedOrdersCount
			AND wl.Working = 1
			AND l.Latitude IS NOT NULL
			AND l.Longitude IS NOT NULL
			AND dbo.fnCalcDistanceKM(@Latitude, @Longitude, l.Latitude, l.Longitude) < @MaxAllowedOrdersDistance
	ORDER BY wl.CreatedAt, l.CreatedAt, DISTANCE_FROM DESC
END
