/*FICHA 2*/
/*1. Crie uma view chamada "HighValueOrders" que mostre o ID do pedido, 
o nome do cliente e o total do pedido para todos os pedidos 
com um valor total superior a US$ 1.000.*/

USE NORTHWIND;

CREATE VIEW HighValueOrders 
AS
	(SELECT O.OrderID AS ID_Pedido, 
			O.CustomerID AS Nome_Cliente, 
			SUM(OD.Quantity*OD.UnitPrice) AS Total_Pedido
	FROM Orders AS O 
		INNER JOIN Order_Details AS OD ON O.OrderID = OD.OrderID 
	GROUP BY O.OrderID,  O.CustomerID
	HAVING SUM(OD.Quantity*OD.UnitPrice) > 1000)

--SELECT * FROM HighValueOrders

/*2. Crie uma view chamada " EmployeeOrders " 
que mostre o nome do funcionário, 
o número de pedidos feitos e o valor total do pedido de cada funcionário.*/

CREATE VIEW EmployeeOrders 
AS
	(SELECT CONCAT(e.FirstName,' ',e.LastName) AS Nome,
			COUNT(DISTINCT O.OrderID) AS QTD_Pedidos,
			SUM(OD.Quantity*OD.UnitPrice) AS Valor_Total
	FROM Employees AS E
		INNER JOIN Orders AS O ON E.EmployeeID = O.EmployeeID
		INNER JOIN Order_Details AS OD ON O.OrderID = OD.OrderID
	GROUP BY CONCAT(e.FirstName,' ',e.LastName))

--SELECT * FROM EmployeeOrders

/*3. Crie uma view chamada "CategoryRevenue" 
que mostre o nome da categoria e a receita total de cada categoria.*/

CREATE VIEW CategoryRevenue 
AS
	(SELECT P.CategoryID AS NumCategoria, C.CategoryName AS NomeCategoria, 
			SUM(OD.UnitPrice*OD.Quantity) AS ReceitaTotal
	FROM ((Products P
			INNER JOIN Order_Details OD ON OD.ProductID = P.ProductID)
			INNER JOIN Categories C ON C.CategoryID = P.CategoryID)
	GROUP BY P.CategoryID, C.CategoryName)

--SELECT * FROM CategoryRevenue

/*4. Crie uma view chamada "EmployeeManagers" 
que mostre o nome do funcionário e o nome do respetivo gerente.*/

CREATE VIEW EmployeeManagers AS
SELECT e.EmployeeID AS Employee, m.EmployeeID AS Manager
FROM Employees e
JOIN Employees m ON e.ReportsTo = m.EmployeeID;

--outra maneira de fazer
CREATE VIEW EmployeeManagers 
AS
	(SELECT E.EmployeeID, 
		CONCAT(E.FirstName,' ',E.LastName) AS Funcionario,
		(CASE
			WHEN E.ReportsTo > 0 THEN 
				(SELECT EG.FirstName +' ' + EG.LastName AS Gerente 
					FROM Employees AS EG 
					WHERE E.ReportsTo = EG.EmployeeID)
		ELSE 'none'
		END) AS NomeGerente
	FROM Employees E)

--SELECT * FROM EmployeeManagers

/*5. Crie uma view chamada "OrderDetailsExtended" 
que mostre os detalhes de cada ordem, incluindo o nome do produto, 
preço unitário, quantidade e preço total.*/

CREATE VIEW OrderDetailsExtended AS

SELECT Orders.OrderID, Products.ProductName, Order_Details.UnitPrice, 
Order_Details.Quantity, (Order_Details.UnitPrice * Order_Details.Quantity) AS TotalPrice
FROM Orders
JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
JOIN Products ON Order_Details.ProductID = Products.ProductID;

--SELECT * FROM OrderDetailsExtended

/*6. Crie uma view chamada “OrdersPerEmployee” 
que mostre o número de pedidos feitos por cada funcionário, 
incluindo seu nome e sobrenome.*/

CREATE VIEW OrdersPerEmployee AS
SELECT CONCAT(Employees.FirstName, ' ', Employees.LastName) 
AS EmployeeName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.FirstName, Employees.LastName;

--SELECT * FROM OrdersPerEmployee

/*7. Crie uma view chamada “OutOfStockProducts” que
mostre os produtos que estão esgotados no momento, 
incluindo o nome do produto e o nome da categoria.*/

CREATE VIEW OutOfStockProducts AS
SELECT Products.ProductName, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitsInStock = 0;

--SELECT * FROM OutOfStockProducts

/*8. Crie uma view chamada “OrdersPerCountry” 
que exiba o número de pedidos enviados para cada país, 
incluindo o nome do país e o número de pedidos.*/

CREATE VIEW OrdersPerCountry AS
SELECT ShipCountry AS Country, COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY ShipCountry;

--SELECT * FROM OrdersPerCountry