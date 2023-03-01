CREATE VIEW [dbo].[vDrivers_Working]
	AS SELECT u.Id, 
	(SELECT count(*) AS ordersCount FROM dbo.[Order] AS o WHERE o.DriverId = u.Id) as orderCount,
	wl.Working, 
	l.Latitude, 
	l.Longitude,
	l.CreatedAt
	FROM dbo.[User] AS u
	INNER JOIN dbo.WorkLog AS wl ON wl.UserId = u.Id
	INNER JOIN dbo.[Location] AS l on l.DriverId = u.Id
	WHERE 
		wl.Id = (SELECT Max(Id) FROM dbo.WorkLog WHERE UserId = u.Id)
		AND 
		l.Id = (SELECT Max(Id) FROM dbo.[Location] WHERE DriverId = u.Id)