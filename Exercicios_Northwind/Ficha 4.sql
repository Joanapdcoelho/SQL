
/*Ficha 4*/
/*1- Crie um procedimento que retorne o número total de clientes. */

CREATE PROCEDURE GetTotalCustomers
AS
BEGIN
    SELECT COUNT(*) AS TotalCustomers
    FROM Customers
END;

EXEC GetTotalCustomers;

/*2- Crie um procedimento que retorne a quantidade de produtos que um cliente comprou num 
ano. */

CREATE PROCEDURE GetCustomerProductCount
    @CustomerID nvarchar(5),
    @Year int
AS
BEGIN
    SELECT Customers.CompanyName, COUNT(Order_Details.ProductID) AS ProductCount
    FROM Customers
    JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
    WHERE Customers.CustomerID = @CustomerID AND YEAR(Orders.OrderDate) = @Year
    GROUP BY Customers.CompanyName;
END;

EXEC GetCustomerProductCount @CustomerID = 'ALFKI', @Year = 2022;

/*3-Crie um procedimento que calcule o preço unitário médio dos produtos em uma categoria 
específica e retorne o resultado. */

CREATE PROCEDURE GetAverageUnitPriceByCategory
    @CategoryName nvarchar(50)
AS
BEGIN
    SELECT AVG(Products.UnitPrice) AS AverageUnitPrice
    FROM Products
    JOIN Categories ON Products.CategoryID = Categories.CategoryID
    WHERE Categories.CategoryName = @CategoryName;
END;

EXEC GetAverageUnitPriceByCategory @CategoryName = 'Beverages';

/*4- Crie um procedimento que aceite um ID de produto como entrada e retorne o nome do 
produto e o preço unitário. */

CREATE PROCEDURE GetProductDetails
    @ProductID int
AS
BEGIN
    SELECT ProductName, UnitPrice
    FROM Products
    WHERE ProductID = @ProductID;
END;

EXEC GetProductDetails @ProductID = 5;

/*5- Crie um procedimento que aceite um ID de cliente como entrada e retorne o número total 
de pedidos feitos por esse cliente. */

CREATE PROCEDURE GetTotalOrdersByCustomer
    @CustomerID nvarchar(5)
AS
BEGIN
    SELECT COUNT(*) AS TotalOrders
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;

EXEC GetTotalOrdersByCustomer @CustomerID = 'ALFKI';


/*6- Crie um procedimento que aceite um ID de funcionário como entrada e retorne o valor total 
de vendas gerado por esse funcionário. */

CREATE PROCEDURE GetTotalSalesByEmployee
    @EmployeeID int
AS
BEGIN
    SELECT SUM(Order_Details.UnitPrice * Order_Details.Quantity) AS TotalSales
    FROM Orders
    JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
    WHERE Orders.EmployeeID = @EmployeeID;
END;

EXEC GetTotalSalesByEmployee @EmployeeID = 5;

