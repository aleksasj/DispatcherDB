CREATE PROCEDURE [dbo].[spWorkLog_StopWorking]
	@Id INT
AS
BEGIN
	INSERT INTO dbo.[WorkLog] (UserId, Working)
	VALUES (
		@Id,
		0
	)
END