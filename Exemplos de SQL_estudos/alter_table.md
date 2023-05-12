# SQL ALTER TABLE
O comando ALTER TABLE em SQL é usado para **modificar a estrutura duma tabela existente**. Com este comando, pode-se adicionar, alterar ou excluir colunas, índices, restrições e outras propriedades da tabela.

# SINTAXE
alter table nome_da_tabela [OPÇÃO]...
------
alter table nomeDaTabela
ação a executar pelo alter

# EXEMPLOS DO QUE SE PODE FAZER 
1. Adicionar, remover ou alterar uma coluna
2. Set valores padrão para uma coluna
3. Add ou Remove restrições de colunas
4. Renomear uma tabela

# SINTAXE ADD COLUMN
**ADD**: esta opção é usada para adicionar uma nova coluna à tabela. A sintaxe básica é a seguinte:

alter table nome_da_tabela add nome_da_coluna tipo_de_dado [OPÇÕES];

Por exemplo, se se quisesse adicionar uma nova coluna chamada "idade" à tabela "clientes", com o tipo de dado INT, a sintaxe seria a seguinte:

alter table clientes add idade INT;

# SINTAXE MODIFY COLUMN
**MODIFY COLUMN**: esta opção é usada para alterar a definição de uma coluna existente, como seu tipo de dados ou comprimento. A sintaxe básica é a seguinte:

ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna tipo_de_dado [OPÇÕES];

Por exemplo, se se quisesse alterar o tipo de dados da coluna "idade" na tabela "clientes" de INTEGER para SMALLINT, a sintaxe seria a seguinte:

**ALTER TABLE** clientes **MODIFY COLUMN** idade SMALLINT;

# SINTAXE DROP COLUMN
**DROP COLUMN**: esta opção é usada para excluir uma coluna existente da tabela. A sintaxe básica é a seguinte:

**ALTER TABLE** nome_da_tabela **DROP COLUMN** nome_da_coluna;

Por exemplo, se se quisesse excluir a coluna "idade" da tabela "clientes", a sintaxe seria a seguinte:

**ALTER TABLE** clientes **DROP COLUMN** idade;

# SINTAXE ADD CONSTRAINT
**ADD CONSTRAINT**: esta opção é usada para adicionar uma nova restrição à tabela, como uma chave primária ou estrangeira. A sintaxe básica é a seguinte:

**ALTER TABLE** nome_da_tabela **ADD CONSTRAINT** nome_da_restrição tipo_de_restrição (colunas) [OPÇÕES];

Por exemplo, se se quisesse adicionar uma chave primária à tabela "clientes" na coluna "id_cliente", a sintaxe seria a seguinte:

**ALTER TABLE** clientes **ADD CONSTRAINT** pk_clientes **PRIMARY KEY** (id_cliente);






