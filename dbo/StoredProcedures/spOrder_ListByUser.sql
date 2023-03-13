CREATE PROCEDURE [dbo].[spOrder_ListByUser]
	@DriverId INT,
	@Offset INT,
	@Limit INT,
	@StatusIds nvarchar(max) 
AS
BEGIN
	SELECT * FROM [dbo].vOrders_List
	WHERE DriverId = @DriverId
	AND [Status] IN (@StatusIds)
	ORDER BY CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
