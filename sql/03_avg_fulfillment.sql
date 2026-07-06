SELECT
	AVG(CAST(DATEDIFF(day, OrderDate, ShippedDate)AS FLOAT)) AS AvgFulfillmentDays
FROM Orders;