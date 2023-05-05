use northwind;

/*Obter a lista de produtos (OrderId, ProductName, Quantity, UnitsInStock) em 
stock que seja menor do que a quantidade no pedido*/
select Order_Details.OrderID, Products.ProductName, Order_Details.Quantity, Products.UnitsInStock
from Order_Details
inner join Products
on Order_Details.ProductID = Products.ProductID
where Products.UnitsInStock < Order_Details.Quantity;

/*Escreva uma consulta, utilizando um JOIN, que selecione todos os nomes de 
produtos e as relacione com as categorias (productname, categoryname) */
select Products.ProductName, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID;

/*Escreva uma consulta para obter a lista de produtos ativos (ProductName, 
UnitPrice) onde os produtos custam entre $ 15 e $ 25 */
select Products.ProductName, Products.UnitPrice, Categories.CategoryName, Products.Discontinued
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.Discontinued = 0 and Products.UnitPrice between 15 and 25;

/*Escreva uma consulta, utilizando um JOIN, que selecione todos os nomes de 
produtos, preço unitário e a região do fornecedor (productname, unitprice, region) 
que não tem fornecedores nos USA. */
SELECT Products.ProductName, Products.UnitPrice, Suppliers.Region
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.Country <> 'USA'

/*Escreva uma consulta, utilizando um JOIN que selecione todas as cod ordens, data 
das ordens, data embarque, cod cliente, nome empresa, contacto (orderid, 
orderdate, shippeddate customerid, companyname e contactname) ordenada pelo 
freight. */
SELECT Orders.OrderID, Orders.OrderDate, Orders.ShippedDate, Customers.CustomerID, Customers.CompanyName, Customers.ContactName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Orders.Freight;

/*Escreva uma consulta, utilizando um JOIN, que mostre o nome e apelido dos 
empregados, as ordens que atenderam e o contacto dos clientes*/
SELECT Employees.FirstName, Employees.LastName, Orders.OrderID, Customers.ContactName
FROM Employees
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/*Escreva uma consulta, utilizando um JOIN, que mostre o nome, preço e 
quantidade de um produto encomendado por um cliente bem como o número e data 
de encomenda */
SELECT Orders.OrderID, Orders.OrderDate, Products.ProductName, Order_Details.UnitPrice, Order_Details.Quantity
FROM Orders
INNER JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
INNER JOIN Products ON Order_Details.ProductID = Products.ProductID;









