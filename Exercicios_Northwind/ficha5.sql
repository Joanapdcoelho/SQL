-- Criar o trigger para a tabela 'Orders'
USE Northwind;
GO

CREATE TRIGGER trg_InsertPedido
ON Customers
AFTER INSERT
AS
BEGIN
    -- Inserir um novo pedido automaticamente quando um novo cliente é adicionado
    INSERT INTO Orders (CustomerID, EmployeeID, OrderDate)
    SELECT CustomerID, 1, GETDATE() -- 1 é um exemplo de EmployeeID, ajuste conforme necessário
    FROM INSERTED;
END;


/*2- Criar um trigger que insira um novo registo na tabela 'order_details' quando o 'UnitsInStock' 
de um produto for atualizado. */
-- Consulta para verificar a estrutura da tabela 'order_details'

select * from Order_Details

-- Criar o trigger para a tabela 'Products'
USE Northwind
GO

CREATE TRIGGER trg_AfterUpdateUnitsInStock
ON Products
AFTER UPDATE
AS
BEGIN
    -- Inserir um novo registro na tabela 'order_details' quando o 'UnitsInStock' for atualizado
    INSERT INTO [Order_Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
    SELECT DISTINCT
        o.OrderID,
        d.ProductID,
        d.UnitPrice,
        d.Quantity,
        0
    FROM Orders o
    JOIN INSERTED i ON o.CustomerID = i.ProductID
    JOIN [Order_Details] d ON o.OrderID = d.OrderID
    WHERE d.ProductID = i.ProductID
      AND d.UnitPrice <> i.UnitPrice;
END;

/*3- */

-- Consulta para verificar a estrutura da tabela 'orders'
SELECT OrderID, OrderDate
FROM Orders;

-- Criar o trigger para a tabela 'Order Details'
USE Northwind;
GO

CREATE TRIGGER trg_AfterInsertOrderDetails
ON [Order_Details]
AFTER INSERT
AS
BEGIN
    -- Obter o OrderID do novo detalhe do pedido inserido
    DECLARE @OrderID INT;
    SELECT @OrderID = OrderID FROM INSERTED;

    -- Atualizar a coluna 'OrderDate' na tabela 'orders'
    UPDATE Orders
    SET OrderDate = GETDATE() -- ou qualquer outra data desejada para atualização
    WHERE OrderID = @OrderID;
END;

