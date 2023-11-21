SELECT Assortment.Name,
Assortment.Price,
Discount.AppliedDiscount AS Discount,
Assortment.Price - Discount.AppliedDiscount AS PriceAfterDiscount
FROM Discount
INNER JOIN Assortment ON Discount.AssortmentID = Assortment.ID
WHERE Discount.SetAmount = 1
ORDER BY Discount.AppliedDiscount DESC, Assortment.Name