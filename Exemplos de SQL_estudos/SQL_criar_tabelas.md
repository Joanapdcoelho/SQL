# SQL CREATE TABLE

## criar tabela em SQL
Para criar uma tabela em SQL Server, pode-se seguir os seguintes passos:

1. Abra o SQL Server Management Studio e conecte-se ao servidor de banco de dados onde deseja criar a tabela.

2. No Object Explorer, selecione o banco de dados onde deseja criar a tabela.

3. Clique com o botão direito do mouse na pasta "Tables" e selecione "New Table".

4. A janela "Table Designer" será aberta. Defina o nome da tabela na caixa "Table Name".

5. Em seguida, adicione as colunas que você deseja incluir na tabela, definindo o nome da coluna, o tipo de dados e outras propriedades, como tamanho máximo e se a coluna é ou não nula.

6. Adicione as restrições, tais como chave primária ou chave estrangeira, na guia "Indexes/Keys".

7. Por fim, salve a tabela clicando no botão "Save" ou pressionando Ctrl + S.

# exemplo de código SQL que cria uma tabela chamada "Clientes" com três colunas:

CREATE TABLE Clientes (
   id_cliente int PRIMARY KEY not null identity(1,1),
   Nome varchar(50) NOT NULL,
   Email varchar(50) UNIQUE
);

Este código SQL cria uma nova tabela chamada "Clientes" com três colunas: id de cliente, Nome e Email.

# EXPLICAÇÃO DO SCRIPT
A primeira linha começa com a instrução CREATE TABLE, que indica que estamos a criar uma nova tabela. Em seguida, especificamos o nome da tabela, que é "Clientes".

A segunda linha define a primeira coluna, id_cliente. Ela é do tipo int e será a chave primária da tabela (PRIMARY KEY). A cláusula NOT NULL indica que essa coluna não pode ter um valor nulo e a cláusula identity(1,1) especifica que o valor dessa coluna será gerado automaticamente pelo sistema em ordem crescente a partir de 1.

A terceira linha define a segunda coluna, Nome. Ela é do tipo varchar(50) e não pode ter um valor nulo (NOT NULL).

A quarta linha define a terceira coluna, Email. Ela é do tipo varchar(50) e cada valor nessa coluna deve ser exclusivo (UNIQUE).

Em resumo, esse script cria uma tabela chamada "Clientes" com três colunas: id_cliente, Nome e Email. A coluna id_cliente é a chave primária, que é gerada automaticamente pelo sistema. A coluna Nome não pode ter um valor nulo e a coluna Email deve ter um valor exclusivo em cada linha da tabela.


