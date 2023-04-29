use northwind;

/*Mostrar todos os registos da tabela Products*/
SELECT * FROM Products;

/*Mostrar os nomes e apelidos dos Empregados*/
SELECT FirstName, lastName FROM Employees;

/*Mostrar os nomes e apelidos dos Empregados concatenados, 
ou seja vai juntar tudo na mesma coluna*/
SELECT concat(FirstName, ' ', lastName) FROM Employees;

/*Mostrar os nomes e apelidos dos Empregados que são “Sales Managers” 
sales manager é o correto*/
SELECT FirstName, LastName FROM Employees
WHERE Title = 'Sales Manager';

/*Mostrar os Empregados que possuem um nome iniciado por ‘M’ sem utilizar o = */
SELECT * FROM Employees
WHERE FirstName LIKE 'M%';

/*Mostrar os nomes e apelidos dos empregados por ordem descendente de 
apelido */
SELECT FirstName, LastName FROM Employees
ORDER BY lastName DESC;

/*Mostrar os Empregados que não são dos USA.*/
SELECT * FROM Employees
WHERE country <> 'USA';

/*Mostrar os Produtos com um preço unitário superior a 50 */
SELECT * FROM Products
WHERE UnitPrice > 50;

/*Mostrar os Produtos com um preço unitário entre 30 e 50 e que possuem um 
stock superior a 39. */
SELECT * FROM Products
WHERE UnitPrice BETWEEN 30 AND 50
AND UnitsInStock > 39;

/*Mostrar os Empregados com números de identificação entre 3 e 5, ordenados 
por código postal. */
SELECT * FROM Employees
WHERE EmployeeID BETWEEN 3 AND 5
ORDER BY PostalCode;

/*Mostrar os Empregados que são dos USA mas não são “Sales Representative”*/
SELECT * FROM Employees
WHERE country = 'USA'
AND title <> 'Sales Representative';








