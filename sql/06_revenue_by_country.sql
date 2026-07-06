SELECT
    o.ShipCountry,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenueByCountry,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) / (SELECT SUM(od2.UnitPrice * od2.Quantity * (1 - od2.Discount)) FROM [Order Details] od2) * 100, 2) AS PctOfTotalRevenue
FROM [Order Details] od
JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY o.ShipCountry
ORDER BY TotalRevenueByCountry DESC;