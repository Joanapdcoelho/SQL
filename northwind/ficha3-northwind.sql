use northwind;
/* Faça uma query baseada na cláusula IN que mostre o Nome da Empresa e o Nome 
de Contactos dos customers que sejam do Brasil, México e Argentina */
SELECT CompanyName, ContactName
FROM Customers
WHERE Country IN ('Brazil', 'Mexico', 'Argentina');

/*Faça uma query que mostre a OrderID, ProductID, UnitPrice, Quantity e o valor 
vendido (UnitPrice*Quantity) da tabela Order_details */
SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS ValorVendido
FROM Order_Details;

/*Faça uma query que mostre o total de clientes que existem.*/
SELECT COUNT(*) AS TotalClientes
FROM Customers;

/*Faça uma query que mostre qual a data de encomenda mais antiga */
SELECT MIN(OrderDate) AS DataEncomendaMaisAntiga
FROM Orders;

/*Faça uma query que mostre uma lista de clientes agrupados por país*/
SELECT Country, COUNT(*) AS TotalClientes
FROM Customers
GROUP BY Country;

/*Faça uma query que mostre uma lista que conte e mostre os ContactTitle 
presentes na tabela customers, devidamente agrupados. */
SELECT ContactTitle, COUNT(*) AS Total
FROM Customers
GROUP BY ContactTitle;

/*Faça uma query que mostre a lista dos pedidos que foram feitos, incluindo o 
remetente que foi usado. Mostre a OrderID, OrderDate e CompanyName do 
remetente e classifique por ID do pedido. Para não mostrar todos os pedidos, mostre 
apenas as linhas com um OrderID menor de 10300.*/
SELECT Orders.OrderID, Orders.OrderDate, Customers.CompanyName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderID < 10300
ORDER BY Orders.OrderID;
