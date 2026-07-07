SELECT
    o.ShipCountry,
    ROUND(AVG(CAST(DATEDIFF(day, o.OrderDate, o.ShippedDate) AS FLOAT)), 2) AS AvgFulfillmentDays,
    COUNT(o.OrderID) AS OrderCount
FROM Orders o
GROUP BY o.ShipCountry
ORDER BY AvgFulfillmentDays DESC;