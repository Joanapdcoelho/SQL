# SQL - CHAVE PRIMÁRIA E ESTRANGEIRA
# CHAVE PRIMÁRIA
Uma chave primária é uma coluna ou um conjunto de colunas que **identificam de forma única cada registo duma tabela**. A chave primária é usada para garantir a integridade dos dados e a consistência das informações armazenadas na tabela. A chave primária também é usada para criar relacionamentos entre tabelas usando chaves estrangeiras.

## COMO CRIAR CHAVE PRIMÁRIA NO SQL SERVER
Para criar uma chave primária numa tabela no SQL Server, você pode usar a cláusula **"PRIMARY KEY"** após a definição da coluna desejada. Por exemplo, para criar uma tabela "clientes" com uma coluna "id" como chave primária.

# EXEMPLO DE SCRIPT DE CRIAÇÃO DE TABELA COM CHAVE PRIMARIA
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    nome VARCHAR(50) not null,
    email VARCHAR(50) not null
);

Neste exemplo, a coluna "id_cliente" é definida como a chave primária da tabela "clientes" usando a cláusula "PRIMARY KEY".

# CHAVE ESTRANGEIRA
Uma chave estrangeira é uma coluna ou um conjunto de colunas numa tabela que se refere à chave primária de outra tabela. A chave estrangeira é usada para criar relacionamentos entre tabelas, permitindo que os dados de uma tabela sejam referenciados por outra tabela.

Ou seja, uma chave estrangeira é definida numa tabela onde ela é apenas um referência e não contém todos os dados ali.

então uma chave estrangeira é simplesmente uma coluna num grupo de colunas que é uma chave primária de outra tabela.

A tabela que contém a chave estrangeira é uma chamada de tabela de referenciadora ou tabela filho. E a tabela na qual a chave estrangeira é referenciada é chamada de tabela referenciada ou tabela pai.

Uma tabela pode ter mais do que uma chave estrangeira dependendo do seu relacionamento com as outras tabelas.

No SQL server define-se uma chave estrangeira através de um "foreign key constraint" ou restrição de chave estrangeira.

Uma restrição de chave estrangeira indica que os valores de uma coluna ou grupo de colunas na tabela filho correspondem aos valores na tabela pai.

Pode-se entender que uma chave estrangeira mantém a "integridade referencial".

# CRIAR CHAVE ESTRANGEIRA EM SQL SERVER
Para criar uma chave estrangeira numa tabela no SQL Server, é preciso criar primeiro uma chave primária na tabela referenciada. Em seguida, pode-se usar a cláusula **"FOREIGN KEY"** na tabela que contém a chave estrangeira para referenciar a chave primária da tabela referenciada. 

Para criar uma constraint de chave estrangeira numa bases de dados SQL, é preciso seguir os seguintes passos:

1. Crie uma tabela que será referenciada pela chave estrangeira (tabela pai).
2. Crie uma segunda tabela que terá a chave estrangeira (tabela filho).
3. Na tabela filho, adicione uma coluna para armazenar a chave estrangeira. Essa coluna deve ter o mesmo tipo de dados e tamanho da coluna na tabela pai que será referenciada.
4. Execute o script SQL para criar a chave estrangeira

# Criar uma tabela que será referenciada pela chave estrangeira (tabela pai):

CREATE TABLE Tabela1 (
  Id_nome_a_dar_a_chave_primaria INT PRIMARY KEY not null identity(1,1),
  Nome VARCHAR(50) not null,
  OutroCampo VARCHAR(50) not null
);

# Criar uma segunda tabela que terá a chave estrangeira (tabela filho):

CREATE TABLE Tabela2 (
  Id INT PRIMARY KEY not null identity(1,1),
  Nome VARCHAR(50),
  Tabela1Id INT,
  FOREIGN KEY (Tabela1Id) REFERENCES Tabela1(Id)
);








