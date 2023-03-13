CREATE PROCEDURE [dbo].[spOrder_List]
	@Offset INT,
	@Limit INT,
	@StatusIds varchar(max)
	AS
BEGIN

	SELECT * FROM [dbo].vOrders_List
	WHERE [Status] IN (SELECT * FROM STRING_SPLIT(@StatusIds, ','))
	ORDER BY CreatedAt DESC
	OFFSET @Offset ROWS
	FETCH NEXT @Limit ROWS ONLY
END
