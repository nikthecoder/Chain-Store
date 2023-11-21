SELECT Store.StreetName,
BusinessHour.WeekDay AS Day,
LEFT(BusinessHour.OpeningTime, 8) AS Opens,
LEFT(BusinessHour.ClosingTime, 8) AS Closes
FROM BusinessHour
INNER JOIN Store ON BusinessHour.StoreID = Store.ID
ORDER BY StreetName, CASE
    WHEN WeekDay = 'Monday' THEN 0
	WHEN WeekDay = 'Tuesday' THEN 1
	WHEN WeekDay = 'Wednesday' THEN 2
	WHEN WeekDay = 'Thursday' THEN 3
	WHEN WeekDay = 'Friday' THEN 4
	WHEN WeekDay = 'Saturday' THEN 5
	WHEN WeekDay = 'Sunday' THEN 6
END