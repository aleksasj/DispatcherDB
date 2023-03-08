CREATE PROCEDURE [dbo].[spDriver_GetAvailable]
	@OrderLatitude float,
	@OrderLongitude float,
	@MaxAllowedOrdersCount INT,
	@MaxAllowedOrdersDistance INT
AS
BEGIN
	SELECT *, dbo.fnCalcDistanceKM(@OrderLatitude, @OrderLongitude, dw.Latitude, dw.Longitude) AS distanceFrom
	FROM dbo.vDrivers_Working AS dw
 	WHERE 
	dw.orderCount <= @MaxAllowedOrdersCount
	AND dbo.fnCalcDistanceKM(@OrderLatitude, @OrderLongitude, dw.Latitude, dw.Longitude) < @MaxAllowedOrdersDistance
	ORDER BY distanceFrom ASC
END
