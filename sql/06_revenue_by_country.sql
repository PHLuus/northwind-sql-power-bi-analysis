SELECT
    o.ShipCountry,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalRevenueByCountry,
    (SELECT SUM(od2.UnitPrice * od2.Quantity * (1 - od2.Discount)) 
     FROM [Order Details] od2) AS GrandTotal
FROM [Order Details] od
JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY o.ShipCountry