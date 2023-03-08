CREATE PROCEDURE [dbo].[spOrder_CancelPendingTooLong]
	@CancelTime DateTime
AS
	UPDATE dbo.[Order] SET [status] = -1 WHERE [status] = 0 AND CreatedAt < @CancelTime;
RETURN
