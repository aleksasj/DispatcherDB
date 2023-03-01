CREATE PROCEDURE [dbo].[spOrder_Picked]
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		[Status] = 2, 
		UpdatedAt = GETDATE() 
	WHERE
		[Status] = 1
		AND Id = @Id
END