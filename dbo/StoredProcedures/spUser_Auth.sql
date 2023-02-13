CREATE PROCEDURE [dbo].[spUser_Auth]
	@Username nvarchar(50),
	@Password nvarchar(50)
AS
BEGIN
	SELECT *
	FROM dbo.[User]
	WHERE Username = @Username AND [Password] = @Password
END
