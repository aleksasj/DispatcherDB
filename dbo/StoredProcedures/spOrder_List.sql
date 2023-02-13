CREATE PROCEDURE [dbo].[spDriver_List]
	@Offset INT,
	@Limit INT,
	@Status nvarchar(max) 
AS
BEGIN
	SELECT * FROM [dbo].vOrders_List
	WHERE [Status] IN (@Status)
	ORDER BY CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
