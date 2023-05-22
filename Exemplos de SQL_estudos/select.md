# Consulta SELECT
A consulta SELECT é usada para **recuperar dados** de uma ou mais tabelas numa base de dados. Aqui estão os passos básicos para escrever uma consulta SELECT:

# SELECT: 
Indica que deseja selecionar dados duma tabela.

**column_name(s)**: Especifique as colunas que deseja incluir no resultado da consulta. Pode-se selecionar todas as colunas usando um asterisco (*) ou listar colunas individuais separadas por vírgulas.

**FROM**: Indica de que tabela se deseja selecionar os dados.

**WHERE** (opcional): Permite adicionar condições para filtrar os resultados. Você pode especificar critérios usando operadores lógicos (como "=", "<", ">") e operadores condicionais (como "AND", "OR", "NOT").

**ORDER BY** (opcional): Permite ordenar os resultados com base numa ou mais colunas. Use **"ASC"** para classificação ascendente e **"DESC"** para classificação descendente.

**LIMIT** (opcional): Restringe o número de linhas retornadas pela consulta.

**SELECT** * **FROM** nome_tabela;

**SELECT** column1, column2 **FROM** nome_tabela **WHERE** condition **ORDER BY** column1 **ASC** **LIMIT** 10;

# SELECT column1, column2: 
Aqui, você está especificando as colunas column1 e column2 que deseja incluir no resultado da consulta. Se houver mais colunas que você deseja selecionar, basta adicioná-las separadas por vírgulas.

# FROM nome_tabela: 
Neste trecho, você deve substituir nome_tabela pelo nome real da tabela de onde deseja selecionar os dados. É importante ter certeza de que a tabela mencionada existe no banco de dados.

# WHERE condition: 
Essa parte é opcional e permite adicionar condições para filtrar os resultados da consulta. Por exemplo, você pode usar a condição column1 = 'valor' para selecionar apenas as linhas onde column1 possui o valor especificado.

# ORDER BY column1 ASC: 
Aqui, você está indicando que deseja ordenar os resultados com base na coluna column1. A palavra-chave ASC significa "ascendente" e classificará os resultados em ordem crescente. Se você desejar uma classificação descendente, poderá usar DESC em vez de ASC.

# LIMIT 10: 
Este trecho é opcional e permite limitar o número de linhas retornadas pela consulta. Neste exemplo, estamos limitando a consulta a apenas 10 linhas. Você pode ajustar o número conforme necessário.