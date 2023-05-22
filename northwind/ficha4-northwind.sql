use northwind;

/*Mostrar o número total de clientes por cidade ordenando descendentemente pelo número 
de clientes (City, TotalCustomer) */
SELECT Customers.City, COUNT(*) AS Total
FROM Customers
WHERE Customers.City is not null
GROUP BY Customers.City
ORDER BY Total DESC;

/*Mostrar os clientes que nunca efetuaram encomendas (Customers.CustomerID, 
Orders.CustomerID) */
SELECT Customers.CompanyName, COUNT(Orders.CustomerID) AS total
FROM Customers
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CompanyName
HAVING COUNT(Orders.OrderID)<1;

/*Mostrar os clientes que nunca tiveram encomendas preparadas pelo empregado 4 
(Customers.CustomerID, Orders.CustomerID) */
select distinct (c.CompanyName)
from Customers c left join Orders o on c.CustomerID = o.CustomerID
where o.CustomerID is null;

select c.CompanyName, COUNT(o.CustomerId) as orders, o.EmployeeID
from Customers c
left join Orders o
on c.CustomerID=o.CustomerID
group by c.CompanyName, o.EmployeeID
having o.EmployeeID!=4;

/*Mostrar os clientes que tenham tido vendas superiores a $7500 no ano de 1997*/
Select o.*, od.Quantity*od.UnitPrice as Vendas
From Orders o 
inner join Order_Details od on o.OrderID = od.OrderID
where year(o.OrderDate) = '1997' and od.Quantity*od.UnitPrice > 7500
--------------
SELECT Customers.CustomerID, Customers.CompanyName, 
SUM(Order_Details.UnitPrice * Order_Details.Quantity) AS TotalSales
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
WHERE YEAR(Orders.OrderDate) = 1997
GROUP BY Customers.CustomerID, Customers.CompanyName
HAVING SUM(Order_Details.UnitPrice * Order_Details.Quantity) > 7500;

/*Mostrar todas as ordens que tenham mais que uma linha com quantidades superiores a 60 
(OrderID)  */
SELECT OrderID
FROM Order_Details
WHERE Quantity > 60
GROUP BY OrderID
HAVING COUNT(*) > 1;
-----------------
SELECT Orderid, COUNT(Orderid) As TotalLinhas, sum(order_details.quantity)
FROM Order_details
WHERE Quantity > 60
GROUP BY Orderid
HAVING COUNT(Orderid) > 1
ORDER BY OrderID

/*Mostrar o menor preço, o maior preço e o preço médio dos produtos da categoria 5*/
SELECT 
    MIN(Products.UnitPrice) AS MenorPreco,
    MAX(Products.UnitPrice) AS MaiorPreco,
    AVG(Products.UnitPrice) AS PrecoMedio
FROM 
    Products
WHERE 
    Products.CategoryID = 5;

--select* from Products where products.CategoryID =5;




