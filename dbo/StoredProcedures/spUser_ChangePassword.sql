CREATE PROCEDURE [dbo].[spUser_ChangePassword]
	@Id INT,
	@Password NVARCHAR(MAX)
AS
BEGIN
	UPDATE dbo.[User] 
	SET 
		[Password] = @Password
	WHERE
		Id = @Id
END
