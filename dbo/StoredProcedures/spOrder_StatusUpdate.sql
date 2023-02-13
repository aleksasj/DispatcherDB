CREATE PROCEDURE [dbo].[spOrder_Cancel]
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		[Status] = -1, 
		UpdatedAt = GETDATE() 
	WHERE
		Id = @Id
END