use northwind;
/*Mostrar todas as ordens que tenham mais que uma linha com quantidades superiores a
60*/
--SELECT * from Orders;

SELECT Orderid, COUNT(Orderid) As TotalLinhas, sum(order_details.quantity) AS SomaLinhas
FROM Order_details
WHERE Quantity > 60
GROUP BY Orderid
HAVING COUNT(Orderid) > 1
ORDER BY OrderID

/*Mostrar a quantidade total de produtos vendidos para cada categoria*/
SELECT Categories.CategoryName, SUM(Order_Details.Quantity) AS TotalQuantidadeProdutos
FROM Products
RIGHT JOIN  Categories ON Categories.CategoryID=Products.CategoryID
INNER JOIN Order_Details ON Order_Details.ProductID=Products.ProductID
GROUP BY Categories.CategoryName

/*Mostrar a receita total de cada mês em 1996, ordenada por mês*/
SELECT MONTH(OrderDate) AS MES, sum(Order_Details.Quantity*Order_Details.UnitPrice) as ReceitaTotal
FROM Orders
INNER JOIN Order_Details ON Order_Details.OrderID = Orders.OrderID
WHERE OrderDate LIKE '%1996%'
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC

/*Mostrar o número de pedidos feitos por cada cliente, ordenados pelo nome do cliente*/
SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS QuantidadePedidos
FROM Customers
INNER JOIN Orders ON Orders.CustomerID=Customers.CustomerID
GROUP BY  Customers.CompanyName
ORDER BY Customers.CompanyName;

/*Mostrar os produtos que possuem um stock disponível (UnitsInStock) inferior 
a 10 unidades e já foram pedidos pelo menos 3 vezes*/
SELECT Products.ProductName, Products.UnitsInStock, COUNT(Orders.OrderID) AS N_Pedidos
FROM Orders
INNER JOIN Order_Details ON Order_Details.OrderID= Orders.OrderID
INNER JOIN Products ON Products.ProductID=Order_Details.ProductID
WHERE UnitsInStock < 10
GROUP BY Products.ProductName, Products.UnitsInStock
HAVING COUNT(Orders.Orderid) >= 3

/*Mostrar os funcionários que foram responsáveis por pelo menos cinco pedidos em 1996 e
cujo valor total dos pedidos seja superior a 20000*/
SELECT Employees.EmployeeID, Employees.FirstName + ' ' + Employees.LastName, SUM(Order_Details.Quantity*Order_Details.UnitPrice) AS ValorTotal
FROM Orders
INNER JOIN Order_Details ON Order_Details.OrderID= Orders.OrderID
INNER JOIN Employees ON Employees.EmployeeID= Orders.EmployeeID
WHERE OrderDate LIKE '%1996%'
GROUP BY Employees.EmployeeID, Employees.FirstName + ' ' + Employees.LastName
HAVING COUNT(Orders.Orderid) >= 5 AND SUM(Order_Details.Quantity*Order_Details.UnitPrice) >= 20000
ORDER BY Employees.EmployeeID