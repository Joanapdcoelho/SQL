# Referência rápida para alguns comandos básicos de SQL

## SELECT
Seleciona dados de uma tabela. A sintaxe básica é:
  **SELECT** coluna1, coluna2, ... **FROM** tabela;

## WHERE
Filtra os dados retornados por uma consulta. A sintaxe básica é:
  **SELECT** coluna1, coluna2, ... **FROM** tabela **WHERE** condição;

## ORDER BY: 
Classifica os dados retornados por uma consulta. A sintaxe básica é:
   **SELECT** coluna1, coluna2, ... **FROM** tabela **ORDER BY** coluna ASC/DESC;

## JOIN
Combina dados de duas ou mais tabelas em uma única consulta. Existem vários tipos de junção (INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN). A sintaxe básica é:
   **SELECT** coluna1, coluna2, ... **FROM** tabela1 **JOIN** tabela2 **ON** tabela1.coluna = tabela2.coluna;

# GROUP BY
Agrupa os dados retornados por uma consulta com base no valor de uma ou mais colunas. A sintaxe básica é:
    **SELECT** coluna1, coluna2, ... **FROM** tabela **GROUP BY** coluna1, coluna2, ...;

# HAVING 
Filtra os dados agrupados retornados por uma consulta. A sintaxe básica é:
    **SELECT** coluna1, coluna2, ... **FROM** tabela **GROUP BY** coluna1, coluna2, ... **HAVING** condição;

# INSERT INTO
Insere dados numa tabela. A sintaxe básica é:
    **INSERT INTO** tabela (coluna1, coluna2, ...) **VALUES** (valor1, valor2, ...);

# UPDATE
Atualiza os dados numa tabela. A sintaxe básica é:
    **UPDATE** tabela **SET** coluna1 = valor1, coluna2 = valor2, ... **WHERE** condição;

# DELETE FROM
Exclui dados de uma tabela. A sintaxe básica é:
    **DELETE FROM** tabela **WHERE** condição;










