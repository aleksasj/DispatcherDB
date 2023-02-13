CREATE PROCEDURE [dbo].[spOrder_Assign]
	@DriverId INT,
	@Id INT
AS
BEGIN
	UPDATE dbo.[Order] 
	SET 
		DriverId = @DriverId, 
		[Status] = 1, 
		UpdatedAt = GETDATE() 
	WHERE
		[Status] = 0 AND Id = @Id
END