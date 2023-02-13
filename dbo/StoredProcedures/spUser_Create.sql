CREATE PROCEDURE [dbo].[spUser_Create]
	@Username NVARCHAR(50),
	@Password NVARCHAR(50),
	@Role NVARCHAR(25)
AS
BEGIN
	INSERT INTO dbo.[User] (Username, [Password], [Role])
	VALUES (
		@Username,
		@Password,
		@Role
	)
END