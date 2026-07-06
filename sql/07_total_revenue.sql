SELECT 
	ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS GrandTotalRevenue
FROM [Order Details] od 