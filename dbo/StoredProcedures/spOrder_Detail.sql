CREATE PROCEDURE [dbo].[spOrder_Detail]
	@Id INT
AS
BEGIN
	SELECT *
	FROM dbo.[vOrders_List]
	WHERE Id = @Id
END
