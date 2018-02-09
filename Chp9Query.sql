--1
SELECT ListPrice, DiscountPercent, ROUND(ListPrice * (DiscountPercent/100), 2) AS "DiscountAmount"
FROM Products
ORDER BY "DiscountAmount";

--2
SELECT OrderDate, YEAR(OrderDate) AS "YearOnly", DAY(OrderDate) AS "DayOnly",
       DATEADD(DAY, 30, OrderDate) AS "DaysLater"
FROM Orders
ORDER BY OrderDate;

--3
SELECT CardNumber, LEN(CardNumber) AS "CNLength", RIGHT(CardNumber, 4) AS "CNLast4", 
       REPLACE(CardNumber, LEFT(CardNumber, 12), 'XXXX-XXXX-XXXX-') AS "CNHidden"
FROM Orders
ORDER BY CardNumber;

--4
SELECT OrderID, OrderDate, DATEADD(DAY, 2, OrderDate) AS "ApproxShipDate", ShipDate,
       DATEDIFF(DAY, OrderDate, ShipDate) AS "DaysToShip"
FROM Orders
WHERE MONTH(OrderDate) = 3 AND YEAR(OrderDate) = 2012; 


