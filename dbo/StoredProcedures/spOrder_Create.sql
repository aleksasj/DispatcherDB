CREATE PROCEDURE [dbo].[spOrder_Create]
	@Name NVARCHAR(50),
	@Phone NVARCHAR(50),
	@PickupId INT,
	@DestinationId INT,
	@Comment TEXT
AS
BEGIN
	INSERT INTO dbo.[Order] ([Name], Phone, PickupId, DestinationId, Comment, [Status])
	VALUES (
		@Name,
		@Phone,
		@PickupId,
		@DestinationId,
		@Comment,
		0
	)
END