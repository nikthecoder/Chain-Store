SELECT [Order].OrderDate AS DateTime,
Customer.FirstName,
Customer.LastName,
OrderProduct.Quantity AS ProductCount,
SUM(OrderProduct.Quantity * Assortment.Price) AS SumBeforeDiscount
FROM Assortment
INNER JOIN OrderProduct
ON OrderProduct.ProductID = Assortment.ID
INNER JOIN [Order]
ON OrderProduct.OrderID = [Order].ID
INNER JOIN Customer
ON [Order].CustomerID = Customer.ID
GROUP BY [Order].OrderDate, Customer.FirstName, Customer.LastName, OrderProduct.Quantity
ORDER BY [Order].OrderDate DESC