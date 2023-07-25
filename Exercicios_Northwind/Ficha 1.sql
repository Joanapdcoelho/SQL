use northwind;

/*1- Mostrar o número da ordem e o número de cliente dos clientes listados na tabela orders 
que fizeram pedidos no dia mais recente. */
select * from Orders;

SELECT OrderDate, OrderID, CustomerID
FROM orders
ORDER BY OrderDate DESC;

SELECT OrderID, CustomerID
FROM orders
WHERE OrderDate = (SELECT MAX(OrderDate) FROM orders);

/*2- Mostre os produtos que nunca foram vendidos em 1998 */
SELECT ProductID, ProductName
FROM products
WHERE ProductID NOT IN (
  SELECT ProductID
  FROM order_details
  WHERE OrderID IN (
    SELECT OrderID
    FROM orders
    WHERE YEAR(OrderDate) = 1998
  )
);

/*3- Mostre os clientes que nunca tiveram compras em 1997*/

SELECT CustomerID, CompanyName
FROM customers
WHERE CustomerID NOT IN (
  SELECT CustomerID
  FROM orders
  WHERE YEAR(OrderDate) = 1997
);

/*4- Mostrar o nome dos produtos da tabela produtos cujo preço unitário seja igual ao preço 
unitário do produto 'Sir Rodneys Scones'*/
select productname from products;

SELECT ProductName
FROM products
WHERE UnitPrice = (
  SELECT UnitPrice
  FROM products
  WHERE ProductName = 'Sir Rodneys Scones'
);

/*5- Mostrar todos os produtos que nunca foram encomendados*/
select* from products;

SELECT COUNT(DISTINCT ProductID) AS TotalProducts
FROM products
WHERE ProductID IN (
  SELECT ProductID
  FROM order_details
);

SELECT ProductID, ProductName
FROM products
WHERE ProductID NOT IN (
  SELECT ProductID
  FROM order_details
);

/*6- Mostrar todos os funcionários que venderam mais de US$ 200.000 em produtos*/

SELECT E.EmployeeID, E.FirstName, E.LastName, SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
FROM employees AS E
JOIN orders AS O ON E.EmployeeID = O.EmployeeID
JOIN order_details AS OD ON O.OrderID = OD.OrderID
GROUP BY E.EmployeeID, E.FirstName, E.LastName
HAVING SUM(OD.Quantity * OD.UnitPrice) > 200000

