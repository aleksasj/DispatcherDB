CREATE PROCEDURE [dbo].[spOrder_Cancel]
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		[Status] = -1, 
		UpdatedAt = GETDATE() 
	WHERE
		[Status] != 3
		AND Id = @Id
END