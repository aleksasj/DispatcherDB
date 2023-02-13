CREATE VIEW [dbo].[vOrders_List]
	AS SELECT o.*, 
	u.Username as DriverUsername,
	d.Title AS DestinationTitle, d.Latitude as DestinationLatitude, d.Longitude as DestinationLongitude,
	p.Title AS PickupTitle, p.Latitude as PickupLatitude, p.Longitude as PickupLongitude
	FROM dbo.[Order] AS o
	LEFT JOIN dbo.[Address] as p ON p.Id = o.PickupId
	LEFT JOIN dbo.[Address] as d on d.Id = d.Id
	LEFT JOIN dbo.[User] as u on u.Id = o.DriverId
