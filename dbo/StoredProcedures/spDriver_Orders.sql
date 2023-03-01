CREATE PROCEDURE [dbo].[spDriver_Orders]
	@DriverId INT,
	@Offset INT,
	@Limit INT
AS
BEGIN
	SELECT ol.*
	FROM dbo.[vOrders_List] AS ol
	WHERE ol.DriverId = @DriverId
	ORDER BY ol.CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
