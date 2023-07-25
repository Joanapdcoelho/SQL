/*Ficha 3 - exerc�cio 1 - Crie um novo utilizador chamado "sales_user" 
com a senha "sales123" e atribua permiss�o*/
-- Cria��o do utilizador e pass
CREATE LOGIN sales_user WITH PASSWORD = 'sales123';

-- Cria��o do utilizador no contexto da base de dados
USE Northwind;
CREATE USER sales_user FOR LOGIN sales_user;

-- Atribui��o de permiss�es
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO sales_user;

/*Exerc�cio 2- Crie um novo utilizador chamado "manager_user" 
com a senha "manager123" e atribua 
permiss�es SELECT, INSERT, UPDATE e DELETE na tabela "Products".  */

-- Cria��o do utilizador
CREATE LOGIN manager_user WITH PASSWORD = 'manager123';

-- Cria��o do utilizador no contexto da base de dados
USE Northwind;
CREATE USER manager_user FOR LOGIN manager_user;

-- Atribui��o de permiss�es na tabela Products
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Products TO manager_user;

/*Exerc�cio 3 - Atribua a permiss�o SELECT "sales_user" na tabela "Customers", mas restrinja de visualizar 
a coluna "customerid".*/

-- Atribui��o da permiss�o SELECT na tabela Customers
GRANT SELECT ON dbo.Customers TO sales_user;

-- Restri��o de visualiza��o da coluna customerid
DENY SELECT ON dbo.Customers(customerid) TO sales_user;

/*Exerc�cio 4- Crie um novo utilizador chamado "admin_user" 
com a senha "admin123" e atribua a ele 
todos os privil�gios em todas as tabelas do base de dados Northwind. */

-- Cria��o do utilizador
CREATE LOGIN admin_user WITH PASSWORD = 'admin123';

-- Cria��o do utilizador no contexto da base de dados
USE Northwind;
CREATE USER admin_user FOR LOGIN admin_user;

-- Atribui��o de permiss�es em todas as tabelas
EXEC sp_MSforeachtable 'GRANT ALL PRIVILEGES ON ? TO admin_user';
-- este est� depreciado 
GRANT control on database::northwind to admin_user;

/*Exerc�cio 5 - Revogue a permiss�o DELETE do "sales_user" na tabela "Orders". */

-- Revoga��o da permiss�o DELETE na tabela Orders
REVOKE DELETE ON dbo.Orders TO sales_user;

/*Atribua a permiss�o INSERT ao utilizador "sales_user" na tabela "Orders". */

-- Atribui��o da permiss�o INSERT na tabela Orders
GRANT INSERT ON dbo.Orders TO sales_user;

/* Exerc�cio 6 - Atribua a permiss�o INSERT ao utilizador "sales_user" na tabela "Orders". 
*/

-- Atribui��o da permiss�o INSERT na tabela Orders
GRANT INSERT ON dbo.Orders TO sales_user;

/*Exerc�cio 7 - Negue a permiss�o ao utilizador "sales_user" para atualizar a coluna "UnitPrice" na tabela 
"Products". */

-- Nega��o da permiss�o UPDATE na coluna UnitPrice da tabela Products
DENY UPDATE (UnitPrice) ON dbo.Products TO sales_user;

/*Exerc�cio 8 - Crie um novo utilizador chamado "report_user" com a senha "report123" e atribua a ele a 
permiss�o SELECT em todas as tabelas, exceto na tabela "Employees".*/

-- Cria��o do utilizador
CREATE LOGIN report_user WITH PASSWORD = 'report123';

-- Cria��o do utilizador no contexto da base de dados
USE Northwind;
CREATE USER report_user FOR LOGIN report_user;

-- Atribui��o de permiss�es em todas as tabelas
EXEC sp_MSforeachtable '
    IF OBJECT_ID(''?'') <> OBJECT_ID(''Employees'')
    BEGIN
        GRANT SELECT ON ? TO report_user;
    END
';






