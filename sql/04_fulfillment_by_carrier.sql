SELECT
	s.CompanyName,
	AVG(CAST(DATEDIFF(day, o.OrderDate, o.ShippedDate) AS FLOAT)) AS AvgFulfillmentDays,
	COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN Shippers s ON o.ShipVia = s.ShipperID 
GROUP BY s.CompanyName
ORDER BY AvgFulfillmentDays;