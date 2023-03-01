CREATE PROCEDURE [dbo].[spOrder_Detail]
	@Id INT
AS
BEGIN
	SELECT ol.*
	FROM dbo.[vOrders_List] AS ol
	WHERE ol.Id = @Id
END
