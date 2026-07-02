SELECT
	s.CompanyName,
	DATEDIFF(day, o.OrderDate, o.ShippedDate) AS FulfillmentDays
FROM Orders o 
JOIN Shippers s ON o.ShipVia = s.ShipperID