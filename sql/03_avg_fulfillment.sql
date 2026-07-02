SELECT
	AVG(DATEDIFF(day, OrderDate, ShippedDate)) AS AvgFulfillmentDays
FROM Orders;