# O que é uma constraint em SQL?
Uma constraint é uma regra que se aplica a uma ou mais colunas numa tabela, definindo o tipo de dados que podem ser armazenados, restringindo valores nulos, garantindo que os valores sejam exclusivos ou definindo chaves primárias e estrangeiras. As constraints são usadas para manter a integridade dos dados numa base de dados, prevenindo dados inválidos ou incoerentes.

# Quando é que devo usar uma constraint?
A utilização de constraints pode ser uma ótima maneira de **garantir a integridade dos dados na base de dados**. Algumas situações em que se pode querer usar constraints incluem:

  1. Garantir que os valores inseridos numa coluna sejam únicos;
  2. Garantir que os valores inseridos numa coluna atendam a uma determinada condição;
  3. Impedir que sejam inseridos valores nulos numa coluna ;
  4. Definir uma chave primária ou chave estrangeira para a tabela.

# Como criar uma constraint em SQL?
Existem vários tipos de constraints em SQL, como **UNIQUE, CHECK, NOT NULL, PRIMARY KEY e FOREIGN KEY**. 

Para criar uma constraint em SQL, pode-se utilizar a seguinte sintaxe:
  **ALTER TABLE** nome_da_tabela
  **ADD CONSTRAINT** nome_da_constraint tipo_de_constraint (coluna(s))

## **Onde:**

**nome_da_tabela** é o nome da tabela na qual se deseja adicionar a constraint;
**nome_da_constraint** é o nome que se deseja dar à constraint;
**tipo_de_constraint** é o tipo de constraint que se deseja adicionar, como PRIMARY KEY, FOREIGN KEY, CHECK ou UNIQUE;
**coluna(s)** é a coluna ou conjunto de colunas que se deseja incluir na constraint.
Por **exemplo**, para **criar uma constraint PRIMARY KEY** na coluna id da tabela clientes, você pode utilizar o seguinte comando:

**ALTER TABLE** clientes
**ADD CONSTRAINT** pk_clientes **PRIMARY KEY** (id);

Este comando criará uma constraint PRIMARY KEY com o nome pk_clientes na coluna id da tabela clientes.







