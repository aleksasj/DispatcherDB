CREATE PROCEDURE [dbo].[spWorkLog_StartWorking]
	@Id INT
AS
BEGIN
	INSERT INTO dbo.[WorkLog] (UserId, Working)
	VALUES (
		@Id,
		1
	)
END