CREATE PROCEDURE [dbo].[spOrder_Finish]
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		[Status] = 3, 
		UpdatedAt = GETDATE() 
	WHERE
		Id = @Id
END