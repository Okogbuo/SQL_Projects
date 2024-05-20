
SELECT ProductID
FROM [Production].[ProductDocument]

   --Select all Columns for data exploration
SELECT *
FROM [Production].[ProductPhoto]

SELECT BusinessEntityID, StandardPrice, MaxOrderQty
FROM [Purchasing].[ProductVendor]

SELECT *
FROM [Purchasing].[ProductVendor]

/* 
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

Select Top(5) AverageLeadTime, MinOrderQty, ProductID, StandardPrice
FROM Purchasing.ProductVendor

SELECT DISTINCT Color
FROM Production.Product

SELECT Count(Color)
FROM [Production].[Product]

SELECT Count(Color) AS TotalColor, Color
FROM [Production].[Product]
Group BY Color

SELECT Count(ProductLine) AS TotalPline , ProductLine
FROM [Production].[Product]
Group By ProductLine

SELECT DISTINCT ProductLine
FROM Production.Product

SELECT Max(ListPrice)
FROM [Production].[Product]

SELECT AVG(ListPrice)
FROM [Production].[Product]

SELECT MIN(ListPrice)
FROM [Production].[Product]


--Where Statement
--=, <>, <,>, And, Or, Like, Null, Not Null, In 
--help to limit or Specify

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where ListPrice = '1431.50'  

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where Name = 'Bearing Ball' 

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where ListPrice <> '1431.50' 

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where ListPrice < '1431.50'

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where ListPrice > '1431.50' 

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where Name = 'Bearing Ball' AND SafetyStockLevel = '1000'

Select ProductID, Name, SafetyStockLevel, ListPrice
From Production.Product
Where ListPrice = '1431.50' or ProductID < '7'

--Like is use for specifying or limiting our result to a list of characters

Select *
From [Sales].[SalesReason]
Where ReasonType Like '%m'

Select *
From [Sales].[SalesReason]
Where ReasonType Like 'm%'

Select *
From [Sales].[SalesReason]
Where ReasonType Like '%m%'

/* 
Group By, Order By
*/

SELECT ProductID, ListPrice
FROM Production.Product
Order By ListPrice DESC

Select Name, ProductID, Color, ListPrice, StandardCost
FROM [Production].[Product]
Order by ListPrice DESC


SELECT Distinct COUNT(CardType) AS TotalCard, CardType
FROM Sales.CreditCard
GROUP BY CardType













Select COUNT(Color) AS StandardColors, AVG(ListPrice) AS AvgPrice, Color
FROM [Production].[Product]
GROUP BY Color

SELECT Count(CardType) AS TotalCard, CardType
FROM [Sales].[CreditCard]
Group By CardType
 

  --Left Join, Full Join, Left Join, Right, Full inner Join
SELECT *
FROM Production.Product
	Inner Join Purchasing.PurchaseOrderDetail
	ON Production.Product.ProductID = Purchasing.PurchaseOrderDetail.ProductID

SELECT Purchasing.PurchaseOrderDetail.ProductID, [Name], OrderQty
FROM Production.Product
	Full Outer Join Purchasing.PurchaseOrderDetail
	ON Production.Product.ProductID = Purchasing.PurchaseOrderDetail.ProductID


	--Create Table and Insert Into
Select *
From [Production].[ProductPhoto]

Select *
From [Sales].[CreditCard]

CREATE TABLE Salcrecard (
CreditCardID int,
CardType varchar (100),
CardNumber int,
ExpMonth int,
ModifiedDate int
)

Select *
From SalcreCard

INSERT INTO SalcreCard 
VALUES('3001', 'SuperiorCard', '4444658', '5', '2020'),
	  ('3074', 'SuperiorCard', '46589398', '7', '2013');

SELECT *
FROM Sales.CreditCard
Union
SELECT *
FROM SalcreCard

----Question 1
--Retrieve information about the products where colour value is not null, and list price between £75 and £750. 
--Rename the column StandardCost to Price. Also, sort the results in descending order by list price. 
 
 SELECT Color, ListPrice, StandardCost AS Price
 FROM Production.Product
 WHERE Color <> 'NULL' AND ListPrice BETWEEN '75' AND '750'
 Order by ListPrice Desc



 ----Question 2
 ----Find all the male employees born between 1962 to 1970 and with hire date greater than 2001 
 --and female employees born between 1972 and 1975 and hire date between 2001 and 2002.

 Select Gender, BirthDate, HireDate
 From HumanResources.Employee
 WHERE Gender = 'M' AND BirthDate BETWEEN '1962' AND '1970' AND HireDate > '2001'
       OR Gender = 'F' AND BirthDate BETWEEN '1972' AND '1975' AND HireDate BETWEEN '2001' AND '2002'

	   --CHECK FOR
Select Gender, BirthDate, HireDate
From HumanResources.Employee
WHERE Gender = 'F' AND BirthDate BETWEEN '1972' AND '1975' AND HireDate BETWEEN '2001' AND '2002'



Select Name, Color, ListPrice AS StandardPrice
From Production.Product
Where Color <> 'Null' AND ListPrice >= '75' AND ListPrice <= '750' 
Order By ListPrice DESC

--Question 2

SELECT Gender, BirthDate, HireDate
FROM HumanResources.Employee
Where Gender = 'M' AND BirthDate >= '1962-01-01' AND BirthDate <= '1970-12-31' AND HireDate > '2001'
	OR Gender = 'F' AND BirthDate Between '1972' AND '1975' AND HireDate Between '2001' AND '2002'

	--CHECK Female table
SELECT Gender, BirthDate, HireDate
FROM HumanResources.Employee
WHERE Gender = 'F' AND BirthDate Between '1972' AND '1975' AND HireDate Between '2001' AND '2002'


----Question 3
--Create a list of 10 most expensive products that have a product number beginning with ‘BK’.
--Include only the product ID, Name and colour.

Select TOP(10)ProductID, Name, Color
FROM Production.Product
Where ProductNumber Like 'BK%'
Order by ListPrice Desc

----Question 4
--How many Distinct Job title is present in the Employee table?

SELECT Distinct Count(JobTitle) AS JobCount, JobTitle
FROM HumanResources.Employee
Group by JobTitle




