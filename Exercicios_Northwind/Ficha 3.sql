/*Ficha 3 - exercício 1 - Crie um novo utilizador chamado "sales_user" 
com a senha "sales123" e atribua permissão*/
-- Criação do utilizador e pass
CREATE LOGIN sales_user WITH PASSWORD = 'sales123';

-- Criação do utilizador no contexto da base de dados
USE Northwind;
CREATE USER sales_user FOR LOGIN sales_user;

-- Atribuição de permissões
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO sales_user;

/*Exercício 2- Crie um novo utilizador chamado "manager_user" 
com a senha "manager123" e atribua 
permissões SELECT, INSERT, UPDATE e DELETE na tabela "Products".  */

-- Criação do utilizador
CREATE LOGIN manager_user WITH PASSWORD = 'manager123';

-- Criação do utilizador no contexto da base de dados
USE Northwind;
CREATE USER manager_user FOR LOGIN manager_user;

-- Atribuição de permissões na tabela Products
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Products TO manager_user;

/*Exercício 3 - Atribua a permissão SELECT "sales_user" na tabela "Customers", mas restrinja de visualizar 
a coluna "customerid".*/

-- Atribuição da permissão SELECT na tabela Customers
GRANT SELECT ON dbo.Customers TO sales_user;

-- Restrição de visualização da coluna customerid
DENY SELECT ON dbo.Customers(customerid) TO sales_user;

/*Exercício 4- Crie um novo utilizador chamado "admin_user" 
com a senha "admin123" e atribua a ele 
todos os privilégios em todas as tabelas do base de dados Northwind. */

-- Criação do utilizador
CREATE LOGIN admin_user WITH PASSWORD = 'admin123';

-- Criação do utilizador no contexto da base de dados
USE Northwind;
CREATE USER admin_user FOR LOGIN admin_user;

-- Atribuição de permissões em todas as tabelas
EXEC sp_MSforeachtable 'GRANT ALL PRIVILEGES ON ? TO admin_user';
-- este está depreciado 
GRANT control on database::northwind to admin_user;

/*Exercício 5 - Revogue a permissão DELETE do "sales_user" na tabela "Orders". */

-- Revogação da permissão DELETE na tabela Orders
REVOKE DELETE ON dbo.Orders TO sales_user;

/*Atribua a permissão INSERT ao utilizador "sales_user" na tabela "Orders". */

-- Atribuição da permissão INSERT na tabela Orders
GRANT INSERT ON dbo.Orders TO sales_user;

/* Exercício 6 - Atribua a permissão INSERT ao utilizador "sales_user" na tabela "Orders". 
*/

-- Atribuição da permissão INSERT na tabela Orders
GRANT INSERT ON dbo.Orders TO sales_user;

/*Exercício 7 - Negue a permissão ao utilizador "sales_user" para atualizar a coluna "UnitPrice" na tabela 
"Products". */

-- Negação da permissão UPDATE na coluna UnitPrice da tabela Products
DENY UPDATE (UnitPrice) ON dbo.Products TO sales_user;

/*Exercício 8 - Crie um novo utilizador chamado "report_user" com a senha "report123" e atribua a ele a 
permissão SELECT em todas as tabelas, exceto na tabela "Employees".*/

-- Criação do utilizador
CREATE LOGIN report_user WITH PASSWORD = 'report123';

-- Criação do utilizador no contexto da base de dados
USE Northwind;
CREATE USER report_user FOR LOGIN report_user;

-- Atribuição de permissões em todas as tabelas
EXEC sp_MSforeachtable '
    IF OBJECT_ID(''?'') <> OBJECT_ID(''Employees'')
    BEGIN
        GRANT SELECT ON ? TO report_user;
    END
';






