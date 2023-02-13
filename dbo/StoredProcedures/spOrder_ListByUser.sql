CREATE PROCEDURE [dbo].[spOrder_ListByUser]
	@DriverId INT,
	@Offset INT,
	@Limit INT,
	@Status nvarchar(max) 
AS
BEGIN
	SELECT * FROM [dbo].vOrders_List
	WHERE DriverId = @DriverId
	AND [Status] IN (@Status)
	ORDER BY CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
