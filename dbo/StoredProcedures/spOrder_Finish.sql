CREATE PROCEDURE [dbo].[spOrder_Finish]
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		[Status] = 3, 
		UpdatedAt = GETDATE() 
	WHERE
		[Status] NOT IN (3, -1)
		AND Id = @Id
END