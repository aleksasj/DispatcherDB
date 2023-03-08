CREATE PROCEDURE [dbo].[spOrder_PendingList]
AS
	SELECT * FROM dbo.[vOrders_List] 
	WHERE [Status] = 0 
	ORDER BY CreatedAt DESC
RETURN
